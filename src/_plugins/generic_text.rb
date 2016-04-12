require_relative 'plugin_helper'

module Jekyll
    module GenericText
    
    # Use these tags for generic text
    #
    # Use this tag to create an intro section
    #
    # ; is used as separator
    #
    # The optional id is used if given, otherwise an id is created
    #
    # Examples:
    # {% gen_intro My title %}
    # Some content (supports markdown)
    # {% endgen_intro %}


    class IntroText < Liquid::Block
      include Jekyll::PluginHelper

      @@id = 1

      def initialize(tag_name, text, tokens)
        super
        @params = parse_args(text)
      end

      def render(context)
        markup = markdownify(super, context)

        if (@params.length > 1)
          full_id = @params[1]
        else
          full_id = 'intro' + @@id.to_s
          @@id += 1
        end

        '<div class="plm-content-intro-text"><h2 id="%1$s">%2$s</h2>%3$s</div>' % [full_id, @params[0], markup]
      end

      def self.reset_id_counter()
        @@id = 1
      end
    end


    # Use this tag to create an info step section
    #
    # ; is used as separator
    #
    # The optional id is used if given, otherwise an id is created
    #
    # Example:
    # {% gen_step My title %}
    # Some content (supports markdown)
    # {% endgen_step %}


    class StepText < Liquid::Block
      include Jekyll::PluginHelper

      @@id = 1

      def initialize(tag_name, text, tokens)
        super
        @params = parse_args(text)
      end

      def render(context)
        markup = markdownify(super, context)

        if (@params.length > 1)
          full_id = @params[1]
        else
          full_id = 'infostep' + @@id.to_s
          @@id += 1
        end

        '<div class="plm-content-info-step"><h3 id="%1$s">%2$s</h3>%3$s</div>' % [full_id, @params[0], markup]
      end

      def self.reset_id_counter()
        @@id = 1
      end
    end

  end
end

Liquid::Template.register_tag('gen_intro', Jekyll::GenericText::IntroText)
Liquid::Template.register_tag('gen_step', Jekyll::GenericText::StepText)
