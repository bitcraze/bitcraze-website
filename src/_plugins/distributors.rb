require_relative 'plugin_helper'

module Jekyll
  module Distributors
    class Distributor < Liquid::Tag
      include Jekyll::PluginHelper

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
        @params = parse_args(text)
      end

      def render(context)
          '<a href="%2$s"><img class="distributor-logo" src="%3$s" alt="%1$s"/></a>' % @params
      end
    end


    class Continent < Liquid::Tag
      include Jekyll::PluginHelper

      # Use this tag on distributors page for continent headers
      #
      # Takes 1 arguments
      # - Continent
      #
      # Example
      # {% continent Asia %}

      @@id = 1

      def initialize(tag_name, text, tokens)
        super
        @params = parse_args(text)
      end

      def render(context)
        full_id = 'continent' + @@id.to_s
        @@id += 1

        '<h2 class="distributor-continent" id="%1$s">%2$s</h2>' % [full_id, @params[0]]
      end

      def self.reset_id_counter()
        @@id = 1
      end
    end


    class Country < Liquid::Tag
      include Jekyll::PluginHelper

      # Use this tag on distributors page for country headers
      #
      # Takes 1 arguments
      # - Country
      #
      # Example
      # {% country Sweden %}

      @@id = 1

      def initialize(tag_name, text, tokens)
        super
        @params = parse_args(text)
      end

      def render(context)
        full_id = 'country' + @@id.to_s
        @@id += 1

        '<h3 id="%1$s">%2$s</h3>' % [full_id, @params[0]]
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