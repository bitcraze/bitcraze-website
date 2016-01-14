module Jekyll
  class ProductImg < Liquid::Tag

    # Use this tag on product pages for the images at the top
    #
    # ; is used as separator between imagages and : between paramters
    #
    # Takes 1 main argumant
    # - Product name
    #
    # And 3 arguments per image
    # - Image path
    # - Image width: narrow, medium, wide
    # - Image type, for intance front, side. Added to Product name for alt.
    #
    # Example
    # {% product_img The fancy product;
    # /images/fancy-product-front.jpg: medium: front;
    # /images/fancy-product-back.jpg: medium: back;
    # /images/fancy-product-top.jpg: narrow: back
    # %}

    def initialize(tag_name, text, tokens)
      super
      parts = split_strip(text, ';')

      @title = parts[0]
      @image = split_strip(parts[1], ':')
    end

    def render(context)
      '<img class="pp-main-image-%3$s"
       src="%2$s"
       alt="%1$s - %4$s"
       title="%1$s - %4$s"/>' % [@title].concat(@image)
    end

    def split_strip(str, token)
      parts = str.split(token)
      parts.map {|part| part.strip}
    end
  end
end

Liquid::Template.register_tag('product_img', Jekyll::ProductImg)