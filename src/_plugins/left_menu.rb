require 'nokogiri'

module Jekyll
  module LeftMenu
    def bc_left_menu(content)
      doc = Nokogiri::HTML(content)
      tags = doc.css('h1, h2, h3').select { |tag| tag['id'] }

      # Pages built from si_part tags start at h1, all other pages start at h2.
      # Whichever it is becomes the top level of the menu, so that the markup
      # always starts with a linked <li> directly inside <ul class="nav">.
      base = tags.any? { |tag| tag.name == 'h1' } ? 1 : 2

      result = ''
      prevDepth = nil
      tags.each do |tag|
        depth = tag.name[1].to_i - base

        result << transition(prevDepth, depth)
        result << '<li>'
        result << '<a href="#' << tag['id'] << '">' << tag.text << '</a>'

        prevDepth = depth
      end

      result << transition(prevDepth, nil)
      result
    end

    private

    # Opens and closes the lists needed to go from one heading depth to the
    # next. A nil depth means "before the first heading" or "after the last".
    def transition(prevDepth, depth)
      top_ul = '<ul class="nav">'
      ul = '<ul>'
      li = '<li>'
      ule = '</ul>'
      lie = '</li>'

      if prevDepth.nil? && depth.nil?
        top_ul + ule
      elsif prevDepth.nil?
        top_ul + (li + ul) * depth
      elsif depth.nil?
        (lie + ule) * prevDepth + lie + ule
      elsif depth > prevDepth
        ul + (li + ul) * (depth - prevDepth - 1)
      elsif depth < prevDepth
        (lie + ule) * (prevDepth - depth) + lie
      else
        lie
      end
    end

  end
end

Liquid::Template.register_filter(Jekyll::LeftMenu)
