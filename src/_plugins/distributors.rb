module Jekyll
  module Distributors
    class Distributor < Liquid::Tag

      # Use this tag on distributors page to display a distributor logo with link
      #
      # Takes 3 arguments
      # - Distributor name
      # - url to distributor
      # - image
      #
      # ; is used as separator
      #
      # Example
      # {% distributor Seeed; http://www.seeedstudio.com/depot/bitcraze-m-64.html?ref=side; /images/seeed.png %}

      def initialize(tag_name, text, tokens)
        super
        @params = split_strip(text, ';')
      end

      def render(context)
          '<a href="%2$s"><img class="plm-content-logo" src="%3$s" alt="%1$s"/></a>' % @params
      end

      def split_strip(str, token)
        parts = str.split(token)
        parts.map {|part| part.strip}
      end
    end


    class Continent < Liquid::Tag
      @@id = 1

      def initialize(tag_name, text, tokens)
        super
        @text = text
      end

      def render(context)
        full_id = 'continent' + @@id.to_s
        @@id += 1

        '<h2 class="plm-distributor-continent" id="%1$s">%2$s</h2>' % [full_id, @text]
      end

      def split_strip(str, token)
        parts = str.split(token)
        parts.map {|part| part.strip}
      end

      def self.reset_id_counter()
        @@id = 1
      end
    end


    class Country < Liquid::Tag
      @@id = 1

      def initialize(tag_name, text, tokens)
        super
        @text = text
      end

      def render(context)
        full_id = 'country' + @@id.to_s
        @@id += 1

        '<h3 id="%1$s">%2$s</h3>' % [full_id, @text]
      end

      def split_strip(str, token)
        parts = str.split(token)
        parts.map {|part| part.strip}
      end

      def self.reset_id_counter()
        @@id = 1
      end
    end
  end
end

Liquid::Template.register_tag('distributor', Jekyll::Distributors::Distributor)
Liquid::Template.register_tag('continent', Jekyll::Distributors::Continent)
Liquid::Template.register_tag('country', Jekyll::Distributors::Country)