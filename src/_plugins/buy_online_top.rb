require_relative 'plugin_helper'

module Jekyll
  class BuyOnlineTop < Liquid::Tag
    include Jekyll::PluginHelper

    # Use this tag on product pages to generated the buy online button
    #
    # Takes 1 arguments
    # - url to web shop
    #
    # Example
    # {% buy_online_top https://shop.com/product %}

    def initialize(tag_name, text, tokens)
      super
      @params = parse_args(text)
    end

    def render(context)
        '<a href="' + @params[0] + '"><button type="button" class="buy-button"><i class="fa-solid fa-cart-shopping fa-fw"></i>Buy online (Top version)</button></a>'
    end
  end
end

Liquid::Template.register_tag('buy_online_top', Jekyll::BuyOnlineTop)
