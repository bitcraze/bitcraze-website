module Jekyll
  module Media
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
        '<div class="img-row-%1$s"><img src="%2$s" alt="%3$s" title="%3$s"/></div>' % [@width, @image, @title]
      end

      def split_strip(str, token)
        parts = str.split(token)
        parts.map {|part| part.strip}
      end
    end

    class Vine < Liquid::Tag

      # Use this tag to add a vine
      #
      # Example:
      # {% vine 123-vine-id-456 %}

      def initialize(tag_name, text, tokens)
        super
        @text = text
      end

      def render(context)
        '<div class="vine-row"><div class="outer-vine"><iframe class="inner-vine vine-embed" src="https://vine.co/v/%1$s/embed/simple"></iframe><script src="//platform.vine.co/static/scripts/embed.js"></script></div></div>' % [@text.strip]
      end
    end
  end
end

Liquid::Template.register_tag('img', Jekyll::Media::Img)
Liquid::Template.register_tag('vine', Jekyll::Media::Vine)
