require 'jekyll'
require 'test/testbase'

require 'src/_plugins/inline_button'

class TestBuyOnline < Testbase

  def test_that_tag_is_rendered
    # Fixture
    tag = '{% inline_button some text; https://some.url %}'
    expected = '<a href="https://some.url"><button type="button">some text</button></a>'
    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end
end
