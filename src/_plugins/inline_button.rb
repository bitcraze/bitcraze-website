require_relative 'plugin_helper'

module Jekyll
  class InlineButton < Liquid::Tag
    include Jekyll::PluginHelper

    # Use this tag on product pages to generated the generic inline button
    #
    # Takes 2 arguments
    # - name
    # - url
    #
    # Example
    # {% inline_button go to shop; https://shop.com/product %}

    def initialize(tag_name, text, tokens)
      super
      @params = parse_args(text)
    end

    def render(context)
        '<a class="btn btn-primary btn-color-primary" href="' + @params[1] + '">' + @params[0] + '</a>'
    end
  end
end

Liquid::Template.register_tag('inline_button', Jekyll::InlineButton)
