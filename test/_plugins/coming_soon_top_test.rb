require 'jekyll'
require 'test/testbase'

require 'src/_plugins/coming_soon_top'

class TestComingSoonTop < Testbase

  def test_that_tag_is_rendered
    # Fixture
    tag = '{% coming_soon_top https://some.url %}'
    expected = '<a href="https://some.url"><button type="button" class="buy-button"><i class="fa-solid fa-cart-shopping fa-fw"></i>Coming Soon (Top version)</button></a>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end
end
