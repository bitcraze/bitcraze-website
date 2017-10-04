require_relative 'plugin_helper'

module Jekyll
  module Media
    class Img < Liquid::Tag
      include Jekyll::PluginHelper

      # Use this tag for images
      #
      # ; is used as separator
      #
      # Takes 3 or 4 arguments
      # - Product name
      # - Image width (narrow, medium, wide)
      # - Image path
      # - circle-border (optional)
      #
      # Example
      # {% img The fancy product; medium; /images/fancy-product-front.jpg %}
      # {% img The fancy product; medium; /images/fancy-product-front.jpg; circle-border %}

      def initialize(tag_name, text, tokens)
        super
        params = parse_args(text)

        @title = params[0]
        @width = params[1]
        @image = params[2]
        @style = params[3]
      end

      def render(context)
        cls = ''
        if @style == 'circle-border'
          cls = ' class="img-circle-border"'
        end

        '<div class="media-row-%1$s"><img src="%2$s" alt="%3$s" title="%3$s"%4$s/></div>' % [@width, @image, @title, cls]
      end
    end

    class TutorialVideo < Liquid::Tag
      include Jekyll::PluginHelper

      # Use this tag to add a tutorial video
      #
      # Example:
      # {% tutorialVideo /video/plop.mp4 %}

      def initialize(tag_name, text, tokens)
        super
        @params = parse_args(text)
      end

      def render(context)
        '<div class="media-row-medium"><video autobuffer controls autoplay muted loop><source src="%1$s" type="video/mp4"></video></div>' % @params
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
        '<div class="media-row-%2$s"><div class="embed-responsive embed-responsive-%3$s"><div class="embed-responsive-item video-item-delayed-load" data-video-id="%1$s" style="background:url(https://i1.ytimg.com/vi/%1$s/0.jpg);" onclick="kraken.loadYoutubeVideo(this)"><i class="fa fa-play-circle fa-3x"></i></div></div></div>' % @params
      end
    end


    class GoogleMaps < Liquid::Tag
      include Jekyll::PluginHelper

      # Use this tag to add a google map
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


    class UsedByText < Liquid::Tag
      include Jekyll::PluginHelper

      # Use this tag to add a "used by" text when we can not use a logo
      #
      # Takes 1 or 2 arguments
      # - The company name
      # - A link url to the company (optional)
      #
      # Example:
      # {% used_by_text Company %}
      # {% used_by_text Company; http://cool.company.com %}

      def initialize(tag_name, text, tokens)
        super
        @params = parse_args(text)
      end


      def render(context)
        if (@params.length == 1)
          '<div class="col-xs-3 col-sm-2 col-md-2 used_by_box_text">%1$s</div>' % @params
        elsif (@params.length == 2)
          '<div class="col-xs-3 col-sm-2 col-md-2 used_by_box_text"><a href="%2$s" target="_blank">%1$s</a></div>' % @params
        end
      end
    end

    class UsedByLogo < Liquid::Tag
      include Jekyll::PluginHelper

      # Use this tag to add a logo that is grey scale, but color when hoovered
      #
      # Takes 2 or 3 arguments
      # - The company name
      # - The image
      # - A link url to the company (optional)
      #
      # Example:
      # {% used_by_logo Company; /images/my_logo.png %}
      # {% used_by_logo Company; /images/my_logo.png; http://cool.company.com %}

      def initialize(tag_name, text, tokens)
        super
        @params = parse_args(text)
      end


      def render(context)
        img_element = '<img class="img-responsive" src="%2$s" alt="%1$s" title="%1$s"/>' % @params

        if (@params.length == 2)
          '<div class="col-xs-3 col-sm-2 col-md-2 used_by_box">%1$s</div>' % [img_element]
        elsif (@params.length == 3)
          url = @params[2]
          '<div class="col-xs-3 col-sm-2 col-md-2 used_by_box"><a href="%2$s" target="_blank">%1$s</a></div>' % [img_element, url]
        end
      end
    end




    # These tags are used to generate a media gallery. The "media_gallery" block tag
    # is used as an outer tag and the "gallery_youtube" tag to define each media item.
    #
    # Example:
    # {% media_gallery %}
    # {% gallery_youtube id1; 16by9; First video %}
    # {% gallery_youtube id1; 16by9; Second video %}
    # ...
    # {% endmedia_gallery %}


    # Use this tag block as an outer block for media galleries
    #
    # Takes no argumants
    #
    # Example:
    # {% media_gallery %}
    # Media items ...
    # {% endmedia_gallery %}

    class MediaGallery < Liquid::Block
      include Jekyll::PluginHelper

      @@group_id = 0

      def initialize(tag_name, text, tokens)
        super
        @items = []
      end

      def render(context)
        context.stack do
          context['media_gallery'] = self

          markup = super

          result ='<div class="media-gallery">'

          counter = 0
          result = @items.reduce(result) do |memo, item|
            if counter % 2 == 0
              r = '<div class="row">' + item
            else
              r = item + '</div>'
            end

            counter += 1
            memo + r
          end
          if counter % 2 == 1
            result += '</div>'
          end

          result += '</div>'

          result
        end
      end

      def add_item(html)
        @items << html
      end

      def to_liquid()
        self
      end
    end


    class GalleryYoutube < Liquid::Tag
      include Jekyll::PluginHelper

      # Use this tag to add a youtube video to a media gallery
      #
      # Takes 2 or 3 arguments
      # - The id, you can find it in the url
      # - Aspect ratio: 4by3, 16by9 or 1by1
      # - Optional header
      #
      # Example:
      # {% gallery_youtube 123-youtube-id-456; 16by9; My video %}

      def initialize(tag_name, text, tokens)
        super
        @params = parse_args(text)
      end

      def render(context)
        header = ''
        if @params.length >= 3
          header = '<div><h3>%3$s</h3></div>' % @params
        end

        html = '<div class="col-md-6">%1$s<div class="embed-responsive embed-responsive-%3$s"><div class="embed-responsive-item video-item-delayed-load" data-video-id="%2$s" style="background:url(https://i1.ytimg.com/vi/%2$s/0.jpg);" onclick="kraken.loadYoutubeVideo(this)"><i class="fa fa-play-circle fa-3x"></i></div></div></div>' % ([header] + @params)
        context['media_gallery'].add_item(html)
        html
      end
    end

  end
end

Liquid::Template.register_tag('img', Jekyll::Media::Img)
Liquid::Template.register_tag('tutorialVideo', Jekyll::Media::TutorialVideo)
Liquid::Template.register_tag('youtube', Jekyll::Media::Youtube)
Liquid::Template.register_tag('map', Jekyll::Media::GoogleMaps)
Liquid::Template.register_tag('used_by_text', Jekyll::Media::UsedByText)
Liquid::Template.register_tag('used_by_logo', Jekyll::Media::UsedByLogo)
Liquid::Template.register_tag('media_gallery', Jekyll::Media::MediaGallery)
Liquid::Template.register_tag('gallery_youtube', Jekyll::Media::GalleryYoutube)
