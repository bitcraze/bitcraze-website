require 'jekyll'
require 'test/testbase'

require 'src/_plugins/row_columns'

class TestRowCols < Testbase

  def setup
    @converter_mock = MiniTest::Mock.new()
    @site_mock = MiniTest::Mock.new()

    @converter_mock.expect(:convert, 'converted md1', ['md1'])
    @converter_mock.expect(:convert, 'converted md2', ['md2'])
    @converter_mock.expect(:convert, 'converted md3', ['md3'])

    @site_mock.expect(:find_converter_instance, @converter_mock, [Jekyll::Converters::Markdown])
    @site_mock.expect(:find_converter_instance, @converter_mock, [Jekyll::Converters::Markdown])
    @site_mock.expect(:find_converter_instance, @converter_mock, [Jekyll::Converters::Markdown])
  end

  def test_that_row_with_three_columns_is_rendered
    # Fixture

    tag = '{% row %}{% column 4 %}md1{% endcolumn %}{% column 3 %}md2{% endcolumn %}{% column 5 %}md3{% endcolumn %}{% endrow %}'
    expected = '
    <section class="row content-area">
        <div class="col-md-4">converted md1</div>
        <div class="col-md-3">converted md2</div>
        <div class="col-md-5">converted md3</div>
    </section>'

    # Test
    actual = Liquid::Template.parse(tag).render(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end

  def test_that_wrong_total_column_width_raises
    # Fixture
    tag = '{% row %}{% column 11 %}md1{% endcolumn %}{% endrow %}'

    # Test
    # Assert
    assert_raises do
      Liquid::Template.parse(tag).render!(nil, registers: {site: @site_mock})
    end
  end
end
