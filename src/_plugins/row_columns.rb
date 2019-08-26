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
    # Tabs ...
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
  end
end

Liquid::Template.register_tag('row', Jekyll::RowColumns::Row)
Liquid::Template.register_tag('column', Jekyll::RowColumns::Column)
