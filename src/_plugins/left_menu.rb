require 'nokogiri'

module Jekyll
  class LeftMenuTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
    end

    def render(context)
      render_from_content(context.registers[:page]['content'])
    end

    def render_from_content(content)
      doc = Nokogiri::HTML(content)
      tags = doc.css('h2, h3')

      result = ''
      prevLevel = ''
      tags.each do |tag|
        level = tag.name

        if (tag['id'])
          result << transition(prevLevel, level)
          result << '<li>'
          result << '<a href="#' << tag['id'] << '">' << tag.text << '</a>'

          prevLevel = level
        end
      end

      result << transition(prevLevel, '')
      result
    end

    def transition(prevLevel, level)
      top_ul = '<ul class="nav">'
      ul = '<ul>'
      li = '<li>'
      ule = '</ul>'
      lie = '</li>'

      case(prevLevel + '-' + level)
        when '-'
          top_ul + ule
        when '-h2'
          top_ul
        when '-h3'
          top_ul + li + ul
        when 'h2-'
          lie + ule
        when 'h2-h2'
          lie
        when 'h2-h3'
          ul
        when 'h3-'
          lie + ule + lie + ule
        when 'h3-h2'
          lie + ule + lie
        when 'h3-h3'
          lie
        else
          ''
      end
    end

  end
end

Liquid::Template.register_tag('build_left_menu_from_content', Jekyll::LeftMenuTag)