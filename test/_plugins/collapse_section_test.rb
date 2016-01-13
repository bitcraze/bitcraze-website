require 'jekyll'
require 'test/testbase'

require 'src/_plugins/collapse_section'

class TestCollapseSection < Testbase

  def test_that_open_tag_is_rendered
    # Fixture
    Jekyll::CollapseSection.reset_id_counter

    tag = '{% collapse_section Read more %}
    Some text
    {% endcollapse_section %}'

    expected = '
    <div><a href="#CollapseSection1" data-toggle="collapse"><strong>Read more </strong></a>
    <div id="CollapseSection1" class="collapse"> Some text </div></div>
    '

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end

  def test_that_ids_are_different
    # Fixture
    Jekyll::CollapseSection.reset_id_counter

    tag = '{% collapse_section first %}
    qwe
    {% endcollapse_section %}
    {% collapse_section second %}
    asd
    {% endcollapse_section %}'

    expected = '
    <div><a href="#CollapseSection1" data-toggle="collapse"><strong>first </strong></a>
    <div id="CollapseSection1" class="collapse"> qwe </div></div>

    <div><a href="#CollapseSection2" data-toggle="collapse"><strong>second </strong></a>
    <div id="CollapseSection2" class="collapse"> asd </div></div>
    '

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end
end
