require 'jekyll'
require 'test/testbase'

require 'src/_plugins/filters'
include Jekyll::Filters

class TestLeftMenu < Testbase

  def test_that_class_is_added_to_single_top_element
    # Fixture
    markup = '<ul><li>item</li></ul>'
    expected = '<ul class="my_class"><li>item</li></ul>'

    # Test
    actual = add_class_to_top(markup, 'my_class')

    # Assert
    assert_html(expected, actual)
  end

  def test_that_class_is_added_to_multiple_top_elements
    # Fixture
    markup = '<ul><li>item</li></ul><h1>title</h1>'
    expected = '<ul class="my_class"><li>item</li></ul><h1 class="my_class">title</h1>'

    # Test
    actual = add_class_to_top(markup, 'my_class')

    # Assert
    assert_html(expected, actual)
  end

end
