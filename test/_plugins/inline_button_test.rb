require 'jekyll'
require 'test/testbase'

require 'src/_plugins/inline_button'

class TestBuyOnline < Testbase

  def test_that_tag_is_rendered
    # Fixture
    tag = '{% inline_button some text; https://some.url %}'
    expected = '<a class="btn btn-primary btn-color-primary" href="https://some.url">some text</a>'
    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end
end
