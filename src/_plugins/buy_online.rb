require_relative 'plugin_helper'

module Jekyll
  class BuyOnline < Liquid::Tag
    include Jekyll::PluginHelper

    # Use this tag on product pages to generated the buy online button
    #
    # Takes 1 arguments
    # - url to web shop
    #
    # Example
    # {% buy_online https://shop.com/product %}

    def initialize(tag_name, text, tokens)
      super
      @params = parse_args(text)
    end

    def render(context)
        '<a href="' + @params[0] + '"><button type="button" class="buy-button"><i class="fa fa-shopping-cart fa-fw"></i>Buy online</button></a>'
    end
  end
end

Liquid::Template.register_tag('buy_online', Jekyll::BuyOnline)
