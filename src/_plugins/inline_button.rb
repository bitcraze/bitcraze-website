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
    # {% inline_button go to shop; http://shop.com/product %}

    def initialize(tag_name, text, tokens)
      super
      @params = parse_args(text)
    end

    def render(context)
        '<a href="' + @params[1] + '"><button type="button">'+@params[0] +'</button></a>'
    end
  end
end

Liquid::Template.register_tag('inline_button', Jekyll::InlineButton)