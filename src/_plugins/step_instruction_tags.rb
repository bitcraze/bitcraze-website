require_relative 'plugin_helper'

module Jekyll
  module StepInstruction
    #
    # Use these tags on getting started pages
    #

    # Use this tag to create an intro section
    #
    # ; is used as separator
    #
    # The optional id is used if given, otherwise an id is created
    #
    # Examples:
    # {% si_intro My title %}
    # Some content (supports markdown)
    # {% endsi_intro %}
    #
    # {% si_intro My title; optional-id %}
    # Some content (supports markdown)
    # {% endsi_intro %}

    class Intro < Liquid::Block
      include Jekyll::PluginHelper

      def initialize(tag_name, text, tokens)
        super
        @params = parse_args(text)
      end

      def render(context)
        markup = markdownify(super, context)

        if (@params.length > 1)
          full_id = @params[1]
        else
          full_id = generate_id(@params[0])
        end

        plugin_data = page_plugin_data(context, 'used_ids')
        raise 'Id "' + full_id + '" is already used!' if plugin_data.has_key?(full_id)
        plugin_data[full_id] = true

        '<div class="step-instruction-intro"><h2 id="%1$s">%2$s</h2>%3$s</div>' % [full_id, @params[0], markup]
      end

      # Allow for empty body. Liquid will not output the rendered result otherwise
      def blank?
        false
      end
    end


    # Use this tag to create an info step section
    #
    # ; is used as separator
    #
    # The optional id is used if given, otherwise an id is created
    #
    # Example:
    # {% si_step My title %}
    # Some content (supports markdown)
    # {% endsi_step %}
    #
    # {% si_step My title; optional-id %}
    # Some content (supports markdown)
    # {% endsi_step %}

    class Step < Liquid::Block
      include Jekyll::PluginHelper

      def initialize(tag_name, text, tokens)
        super
        @params = parse_args(text)
      end

      def render(context)
        markup = markdownify(super, context)

        if (@params.length > 1)
          full_id = @params[1]
        else
          full_id = generate_id(@params[0])
        end

        plugin_data = page_plugin_data(context, 'used_ids')
        raise 'Id "' + full_id + '" is already used!' if plugin_data.has_key?(full_id)
        plugin_data[full_id] = true

        '<div class="step-instruction-info-step"><h3 id="%1$s">%2$s</h3>%3$s</div>' % [full_id, @params[0], markup]
      end
    end

  end
end

Liquid::Template.register_tag('si_intro', Jekyll::StepInstruction::Intro)
Liquid::Template.register_tag('si_step', Jekyll::StepInstruction::Step)
