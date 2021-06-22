require_relative 'plugin_helper'

module Jekyll
  module Poplink
    class Poplink < Liquid::Tag
      include Jekyll::PluginHelper

      # Use this tag to add a poplink. A poplink is a link that opens up a popup with more links when clicked.
      # Poplinks are defined in src/_data/poplink.yml, it contains a mapping from id to a text, a default link and a markdown file.
      # The text is used for the poplink, the default link is used in the poplink as well but will usually not be used unless js is disabled.
      # The markdown file refers to a file that defines the contents of the popup.
      #
      # To add a new type of poplink (for a new product for instance) do the following:
      #   - create a new .md file in the src/_poplink directory that defines the poplink content
      #   - edit src/_data/poplink.yml and add your poplink
      #   - clean all generated content and restart the server in your local environment
      #
      # ; is used as separator
      #
      # Takes 1 or 2 argument
      # - poplink id
      # - Text to use in the link if the default one is not appropriate
      #
      # Example
      # {% poplink led-ring-deck %}
      # {% poplink led-ring-deck; the light source }

      @@id = 0

      def initialize(tag_name, text, tokens)
        super
        params = parse_args(text)
        @link_key = params[0]

        @text = nil
        if params.length > 1
          @text = params[1]
        end
      end

      def cache
        @@cache ||= Jekyll::Cache.new("Bitcraze::Poplink")
      end

      def lookup(context, link_key)
        cache.getset(link_key) do
          site = context.registers[:site]
          poplink_config = site.data["poplink"]
          raise "poplink config is missing in _data" if poplink_config == nil

          poplinks = poplink_config["poplinks"]
          raise "'poplinks' missing in poplink config" if poplinks == nil

          poplink = poplinks[link_key]
          raise ("Data is missing in poplink config for poplink '" + link_key + "'") if poplink == nil

          text = poplink["title"]
          raise ("'titile' is missing for poplink '" + link_key + "'") if text == nil

          url = poplink["default-link"]
          raise ("'default-link' is missing for poplink '" + link_key + "'") if url == nil

          [text, url]
        end
      end

      def render(context)
        text, url = lookup(context, @link_key)

        if @text != nil
          text = @text
        end

        @@id += 1
        id_s = "poplink" + @@id.to_s

        '<a id="' + id_s + '" class="poplink" onclick="return kraken.poplinkShowPopup(\'' + id_s + '\', \'' + @link_key + '\');" href="' + url + '">' + text + '&nbsp;<i class="fa fa-caret-right"></i></a>'
      end

      def self.reset_id_counter()
        @@id = 0
      end
    end

    class PoplinkContent < Liquid::Tag
      include Jekyll::PluginHelper

      # Use this tag to add the contents of a poplink to a page (not a popup)
      #
      # Takes 1
      # - poplink id
      #
      # Example
      # {% poplink_content led-ring-deck %}

      def initialize(tag_name, text, tokens)
        super
        params = parse_args(text)
        @link_key = params[0]
      end

      def render(context)
        site = context.registers[:site]
        poplink_config = site.data["poplink"]
        raise "poplink config is missing in _data" if poplink_config == nil

        poplinks = poplink_config["poplinks"]
        raise "'poplinks' missing in poplink config" if poplinks == nil

        poplink = poplinks[@link_key]
        raise ("Data is missing in poplink config for poplink '" + @link_key + "'") if poplink == nil

        content_dir = poplink_config["content_dir"]
        raise ("content_dir in poplink config") if content_dir == nil

        file_name = poplink["content"]
        raise ("content is missing in poplink config for poplink '" + @link_key + "'") if poplink == nil

        config = site.config
        src_dir = config["source"]

        path = File.join(src_dir, content_dir, file_name)
        md = File.read(path)
        markdownify(md, context)
      end

      def self.reset_id_counter()
        @@id = 0
      end
    end

    class PoplinkJs < Liquid::Tag
      include Jekyll::PluginHelper

      # Utility tag used to generate a js map that defines all poplinks. It reads the src/_data/poplink.yml file
      # and markdown files to build the data.
      #
      # Takes no arguments
      #
      # Example
      # {% poplink_js %}

      def initialize(tag_name, text, tokens)
        super
      end

      def render(context)
        site = context.registers[:site]
        config = site.config
        src_dir = config["source"]

        poplink_config = site.data["poplink"]
        content_dir = poplink_config["content_dir"]
        poplinks = poplink_config["poplinks"]

        result = '{';

        poplinks.each do |id, data|
          file_name = data["content"]

          path = File.join(src_dir, content_dir, file_name)
          md = File.read(path)
          markup = markdownify(md, context)
          result += "'" + id + "': `" + markup + "`,"
        end

        result += '}'

        return result
      end
    end
  end
end

Liquid::Template.register_tag('poplink', Jekyll::Poplink::Poplink)
Liquid::Template.register_tag('poplink_content', Jekyll::Poplink::PoplinkContent)
Liquid::Template.register_tag('poplink_js', Jekyll::Poplink::PoplinkJs)
