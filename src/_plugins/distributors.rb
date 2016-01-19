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
  end
end

Liquid::Template.register_tag('distributor', Jekyll::Distributors::Distributor)