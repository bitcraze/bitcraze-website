require 'jekyll'
require 'test/testbase'

require 'src/_plugins/coming_soon_bottom'

class TestComingSoonBottomShop < Testbase

  def test_that_tag_is_rendered
    # Fixture
    tag = '{% coming_soon_bottom https://some.url %}'
    expected = '<a href="https://some.url"><button type="button" class="buy-button"><i class="fa-solid fa-cart-shopping fa-fw"></i>Coming Soon (Bottom version)</button></a>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end
end
