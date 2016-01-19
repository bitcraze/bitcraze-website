require_relative 'plugin_helper'

module Jekyll

  # Use this tag to create a collapsed section with a link to open it
  #
  # Example:
  # {% collapse_section My title %}
  # Some content that is collapsed (supports markdown)
  # {% endcollapse_section %}

  class CollapseSection < Liquid::Block
    include Jekyll::PluginHelper

    @@id = 1

    def initialize(tag_name, text, tokens)
      super
      @params = parse_args(text)
    end

    def render(context)
      opening_tags = '<div><a href="#CollapseSection%1$s" data-toggle="collapse"><strong>%2$s</strong></a><div id="CollapseSection%1$s" class="collapse">' % [@@id, @params[0]]
      markup = markdownify(super, context)
      closing_tags = '</div></div>'

      @@id += 1

      "#{opening_tags}#{markup}#{closing_tags}"
    end

    def self.reset_id_counter()
      @@id = 1
    end
  end
end

Liquid::Template.register_tag('collapse_section', Jekyll::CollapseSection)
