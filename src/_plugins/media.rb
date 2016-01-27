require_relative 'plugin_helper'

module Jekyll
  module Media
    class Img < Liquid::Tag
      include Jekyll::PluginHelper

      # Use this tag for images
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
        params = parse_args(text)

        @title = params[0]
        @width = params[1]
        @image = params[2]
      end

      def render(context)
        '<div class="media-row-%1$s"><img src="%2$s" alt="%3$s" title="%3$s"/></div>' % [@width, @image, @title]
      end
    end

    class Vine < Liquid::Tag
      include Jekyll::PluginHelper

      # Use this tag to add a vine
      #
      # Example:
      # {% vine 123-vine-id-456 %}

      def initialize(tag_name, text, tokens)
        super
        @params = parse_args(text)
      end

      def render(context)
        '<div class="media-row-medium"><div class="outer-vine"><iframe class="inner-vine vine-embed" src="https://vine.co/v/%1$s/embed/simple"></iframe><script src="//platform.vine.co/static/scripts/embed.js"></script></div></div>' % @params
      end
    end


    class Youtube < Liquid::Tag
      include Jekyll::PluginHelper

      # Use this tag to add a youtube video
      #
      # Takes 3 arguments
      # - The id, you can find it in the url
      # - The width: narrow, medium or wide
      # - Aspect ratio: 4by3, 16by9 or 1by1
      #
      # Example:
      # {% youtube 123-youtube-id-456; medium; 16by9 %}

      def initialize(tag_name, text, tokens)
        super
        @params = parse_args(text)
      end

      def render(context)
        '<div class="media-row-%2$s"><div class="embed-responsive embed-responsive-%3$s"><iframe class="embed-responsive-item" src="https://www.youtube.com/embed/%1$s" allowfullscreen></iframe></div></div>' % @params
      end
    end


    class GoogleMaps < Liquid::Tag
      include Jekyll::PluginHelper

      # Use this tag to add a youtube video
      #
      # Takes 2 arguments
      # - The id, you can find it in the url
      # - The width: narrow, medium or wide
      #
      # Example:
      # {% map 123-map-id-456; medium %}

      def initialize(tag_name, text, tokens)
        super
        @params = parse_args(text)
      end

      def render(context)
        '<div class="media-row-%2$s"><div class="embed-responsive embed-responsive-1by1"><iframe class="embed-responsive-item-medium" src="https://www.google.com/maps/embed?pb=%1$s" allowfullscreen="allowfullscreen"></iframe></div></div>' % @params
      end
    end


    class UsedBy < Liquid::Tag
      include Jekyll::PluginHelper

      # Use this tag to add a logo that is grey scale, but color when hoovered
      #
      # Takes 1 or 3 argument
      # - The company
      # - The image (optional)
      # - Width (narrow or medium)
      #
      # Example:
      # {% used_by Company; /images/my_logo.png; narrow %}
      # {% used_by Company %}

      def initialize(tag_name, text, tokens)
        super
        @params = parse_args(text)
      end

      def render(context)
        element = @params[0]
        width_class = ''
        if (@params.length > 1)
          element = '<img class="img-responsive" src="%2$s" alt="%1$s" title="%1$s"/>' % @params
          width_class = ' used_by_%3$s' % @params
        end
        '<div class="used_by%1$s">%2$s</div>' % [width_class, element]
      end
    end

  end
end

Liquid::Template.register_tag('img', Jekyll::Media::Img)
Liquid::Template.register_tag('vine', Jekyll::Media::Vine)
Liquid::Template.register_tag('youtube', Jekyll::Media::Youtube)
Liquid::Template.register_tag('map', Jekyll::Media::GoogleMaps)
Liquid::Template.register_tag('used_by', Jekyll::Media::UsedBy)
