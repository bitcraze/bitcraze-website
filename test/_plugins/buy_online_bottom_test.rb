require 'jekyll'
require 'test/testbase'

require 'src/_plugins/buy_online_bottom'

class TestBuyOnlineBottom < Testbase

  def test_that_tag_is_rendered
    # Fixture
    tag = '{% buy_online_bottom https://some.url %}'
    expected = '<a href="https://some.url"><button type="button" class="buy-button"><i class="fa-solid fa-cart-shopping fa-fw"></i>Buy online (Bottom version)</button></a>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end
end
