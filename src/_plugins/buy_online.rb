module Jekyll
  class BuyOnline < Liquid::Tag

    # Use this tag on product pages to generated the buy online button
    #
    # Takes 1 arguments
    # - url to web shop
    #
    # Example
    # {% buy_online http://shop.com/product %}

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
        '<button type="button"><i class="fa fa-shopping-cart fa-fw"></i><a href="' + @text + '">Buy online</a></button>'
    end
  end
end

Liquid::Template.register_tag('buy_online', Jekyll::BuyOnline)