require_relative 'plugin_helper'

module Jekyll
  module RowColumns

    # These tags are used to generate sections with columns. The "row" block tag
    # is used as an outer tag to create a row and the "column" tag to define each column.
    #
    # Example:
    # {% row %}
    # {% column 3 %}
    # Column 1 content (markdown), width 3 (of 12)
    # {% endcolumn %}
    # {% column 4 %}
    # Column 2 content (markdown), width 4 (of 12)
    # {% endcolumn %}
    # {% column 5 %}
    # Column 3 content (markdown), width 5 (of 12)
    # {% endcolumn %}
    # {% endrow %}


    # Use this tag block as an outer block for columns
    # Note: the total width of the columns in the row must be 12 units.
    #
    # Takes no arguments
    #
    # Example:
    # {% row %}
    # Columns ...
    # {% endrow %}

    class Row < Liquid::Block
      include Jekyll::PluginHelper

      def initialize(tag_name, text, tokens)
        super
        @width_count = 0
      end

      def render(context)
        context.stack do
          context['row'] = self
          markup = super

          raise 'Must have a total column width of 12 in a row, found ' + @width_count.to_s if @width_count != 12
          '<section class="row content-area">' + markup + '</section>'
        end
      end

      def to_liquid()
        self
      end

      def add_column(width)
        @width_count += width
      end
    end


    # Use this tag to define a column
    #
    # Takes 1 argument:
    # - width: the width of the column in units, the full page is 12 units.
    #
    # Example
    # {% column 7 %}
    # Column content (markdown)
    # {% endcolumn %}

    class Column < Liquid::Block
      include Jekyll::PluginHelper

      def initialize(tag_name, text, tokens)
        super
        @params = parse_args(text)
      end

      def render(context)
        width = @params[0].to_i
        context['row'].add_column width

        markup = markdownify(super, context)
        '<div class="col-md-' + width.to_s + '">' + markup + '</div>'
      end
    end

    # Use this tag to create a row with a full width column.
    #
    # Equal to
    # {% row %}{% column 12 %}
    # My fancy content...
    # {% endcolumn %}{% endrow %}
    #
    # Takes no arguments
    #
    # Example
    # {% row_full %}
    # Column content (markdown)
    # {% endrow_full %}

    class RowFull < Liquid::Block
      include Jekyll::PluginHelper

      def initialize(tag_name, text, tokens)
        super
      end

      def render(context)
        context.stack do
          markup = markdownify(super, context)

          '<section class="row content-area"><div class="col-md-12">' + markup + '</div></section>'
        end
      end

      def to_liquid()
        self
      end
    end

    # Use this tag to create a row with a title and three columns containing an image, text and links
    #
    # Arguments:
    #   Title of heading
    #   Image
    #
    # ; is used as separator
    #
    # Example
    # {%row_image_text_links My title; images/img1.png; http://link1,http:/link2,http:/link3 %}
    # {% row_text %}
    # Midle column content (markdown)
    # {% endrow_text %}
    # {% row_links %}
    # * [Link 1](http://link.one)
    # * [Link 2](http://link.two)
    # {% endrow_links %}
    # {% endrow_image_text_links %}

    class RowImageTextLinks < Liquid::Block
      include Jekyll::PluginHelper

      def initialize(tag_name, text, tokens)
        super
        @params = parse_args(text)
        @text_content = ''
        @link_content = ''
      end

      def render(context)
        title = @params[0]
        image = @params[1]

        context.stack do
          context['row_image_text_links'] = self
          markup = super

          '<section class="row content-area"><div class="col-md-12"><h3>' + title + '</h3></div>' +
          '</section><section class="row content-area">' +
          '<div class="col-md-3 doc-section-image"><img src="' + image + '" alt="' + title + '"></div>' +
          '<div class="col-md-6">' + @text_content + '</div>' +
          '<div class="col-md-3">' + @link_content + '</div></section>'
        end
      end

      def to_liquid()
        self
      end

      def set_text_content(content)
        @text_content = content
      end

      def set_link_content(content)
        @link_content = content
      end
    end

    class RowText < Liquid::Block
      include Jekyll::PluginHelper

      def initialize(tag_name, text, tokens)
        super
      end

      def render(context)
        context.stack do
          markup = markdownify(super, context)
          context['row_image_text_links'].set_text_content(markup)
        end
      end

      def to_liquid()
        self
      end
    end

    class RowLinks < Liquid::Block
      include Jekyll::PluginHelper

      def initialize(tag_name, text, tokens)
        super
      end

      def render(context)
        context.stack do
          markup = markdownify(super, context)
          context['row_image_text_links'].set_link_content(markup)
        end
      end

      def to_liquid()
        self
      end
    end

  end
end

Liquid::Template.register_tag('row', Jekyll::RowColumns::Row)
Liquid::Template.register_tag('column', Jekyll::RowColumns::Column)
Liquid::Template.register_tag('row_full', Jekyll::RowColumns::RowFull)
Liquid::Template.register_tag('row_image_text_links', Jekyll::RowColumns::RowImageTextLinks)
Liquid::Template.register_tag('row_text', Jekyll::RowColumns::RowText)
Liquid::Template.register_tag('row_links', Jekyll::RowColumns::RowLinks)
