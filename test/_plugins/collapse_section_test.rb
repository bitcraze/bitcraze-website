require 'jekyll'
require 'test/testbase'

require 'src/_plugins/collapse_section'

class TestCollapseSection < Testbase

  def setup
    @converter_mock = MiniTest::Mock.new()
    @converter_mock.expect(:convert, 'converted md', ['md'])
    @converter_mock.expect(:convert, 'converted md', ['md'])

    @site_mock = MiniTest::Mock.new()
    @site_mock.expect(:find_converter_instance, @converter_mock, [Jekyll::Converters::Markdown])
    @site_mock.expect(:find_converter_instance, @converter_mock, [Jekyll::Converters::Markdown])
  end

  def test_that_open_tag_is_rendered
    # Fixture
    Jekyll::CollapseSection.reset_id_counter

    tag = '{% collapse_section Read more %}md{% endcollapse_section %}'

    expected = '
    <div><a href="#CollapseSection1" data-toggle="collapse"><strong>Read more </strong></a>
    <div id="CollapseSection1" class="collapse">converted md</div></div>
    '

    # Test
    actual = Liquid::Template.parse(tag).render(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end

  def test_that_ids_are_different
    # Fixture
    Jekyll::CollapseSection.reset_id_counter

    tag = '{% collapse_section first %}md{% endcollapse_section %}
    {% collapse_section second %}md{% endcollapse_section %}'

    expected = '
    <div><a href="#CollapseSection1" data-toggle="collapse"><strong>first </strong></a>
    <div id="CollapseSection1" class="collapse">converted md</div></div>

    <div><a href="#CollapseSection2" data-toggle="collapse"><strong>second </strong></a>
    <div id="CollapseSection2" class="collapse">converted md</div></div>
    '

    # Test
    actual = Liquid::Template.parse(tag).render(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end
end
