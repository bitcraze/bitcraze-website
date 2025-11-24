require_relative 'plugin_helper'

module Jekyll
  class ComingSoonBottom < Liquid::Tag
    include Jekyll::PluginHelper

    # Use this tag on product pages (with a top and bottom version) to generated the coming soon button
    #
    # Takes 1 arguments
    # - url to web shop
    #
    # Example
    # {% coming_soon_bottom https://shop.com/product %}

    def initialize(tag_name, text, tokens)
      super
      @params = parse_args(text)
    end

    def render(context)
        '<a href="' + @params[0] + '"><button type="button" class="buy-button"><i class="fa-solid fa-cart-shopping fa-fw"></i>Coming Soon (Bottom version)</button></a>'
    end
  end
end

Liquid::Template.register_tag('coming_soon_bottom', Jekyll::ComingSoonBottom)
