require 'nokogiri'

module Jekyll
  module BcFilters
    def buy_online(url)
      '<button type="button"><i class="fa fa-shopping-cart fa-fw"></i><a href="' + url + '">Buy online</a></button>'
    end
  end
end

Liquid::Template.register_filter(Jekyll::BcFilters)
