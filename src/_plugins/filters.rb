require 'nokogiri'

module Jekyll
  module Filters
    def add_class_to_top(content, clazz)
      doc = Nokogiri::HTML.fragment(content)
      doc.search(':root').tap{ |tag| tag.add_class(clazz) }
      doc.to_html
    end

  end
end

Liquid::Template.register_filter(Jekyll::Filters)
