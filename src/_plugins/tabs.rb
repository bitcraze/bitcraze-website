require_relative 'plugin_helper'

module Jekyll
  module Tabs

    # These tags are used to generate tabed sections. The "tabgroup" block tag
    # is used as an outer tag and the "tab" tag to define each tab.
    #
    # Example:
    # {% tabgroup %}
    # {% tab Title of first tab %}
    # Tab content (markdown)
    # {% endtab %}
    # {% tab Title of first tab %}
    # Tab content (markdown)
    # {% endtab %}
    # ...
    # {% endtabgroup %}


    # Use this tag block as an outer block for tags
    #
    # Takes no argumants
    #
    # Example:
    # {% tabgroup %}
    # Tabs ...
    # {% endtabgroup %}

    class Group < Liquid::Block
      include Jekyll::PluginHelper

      @@group_id = 0

      def initialize(tag_name, text, tokens)
        super
        @tabs = []
      end

      def render(context)
        @@group_id += 1

        context.stack do
          context['tabgroup'] = self

          markup = super

          result = '<div><ul class="nav nav-tabs" role="tablist">'
          result = @tabs.reduce(result) do |memo, tab|
            class_active = ''
            if (tab[:is_active])
              class_active = ' class="active"'
            end

            memo + '<li role="presentation"%1$s><a href="#%2$s" role="tab" data-toggle="tab">%3$s</a></li>' % [class_active, tab[:id], tab[:title]]
          end
          result += '</ul><div class="tab-content">'
          result += markup
          result += '</div></div>'

          result
        end
      end

      def add_tab(title)
        next_id = @tabs.length + 1
        tab_id = 'tab-id-%1$s-%2$s' % [@@group_id.to_s, next_id.to_s]
        is_active = (next_id == 1)

        data = {title: title, id: tab_id, is_active: is_active}
        @tabs << data

        data
      end

      def to_liquid()
        self
      end

      def self.reset_id()
        @@group_id = 0
      end
    end


    # Use this tag to define a tab
    #
    # ; is used as separator
    #
    # Takes 1 argumant
    # - Tab title
    #
    # Example
    # {% tab Title of tab %}
    # Tab content (markdown)
    # {% endtab %}

    class Tab < Liquid::Block
      include Jekyll::PluginHelper

      def initialize(tag_name, text, tokens)
        super
        @params = parse_args(text)
      end

      def render(context)
        data = context['tabgroup'].add_tab(@params[0])
        markup = markdownify(super, context)

        active = ''
        if (data[:is_active])
          active = ' active'
        end

        '<div role="tabpanel" class="tab-pane fade in%3$s" id="%1$s">%2$s</div>' % [data[:id], markup, active]
      end

    end
  end
end

Liquid::Template.register_tag('tabgroup', Jekyll::Tabs::Group)
Liquid::Template.register_tag('tab', Jekyll::Tabs::Tab)
