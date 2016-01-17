module Jekyll
  class Img < Liquid::Tag

    # Use this tag for iamges
    #
    # ; is used as separator
    #
    # Takes 3 arguments
    # - Product name
    # - Image width (narrow, medium, wide)
    # - Image path
    #
    # Example
    # {% img The fancy product; medium; /images/fancy-product-front.jpg %}

    def initialize(tag_name, text, tokens)
      super
      params = split_strip(text, ';')

      @title = params[0]
      @width = params[1]
      @image = params[2]
    end

    def render(context)
      '<div class="plm-img-row-%1$s"><img src="%2$s" alt="%3$s" title="%3$s"/></div>' % [@width, @image, @title]
    end

    def split_strip(str, token)
      parts = str.split(token)
      parts.map {|part| part.strip}
    end
  end
end

Liquid::Template.register_tag('img', Jekyll::Img)