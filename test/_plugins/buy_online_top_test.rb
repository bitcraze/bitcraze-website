require 'jekyll'
require 'test/testbase'

require 'src/_plugins/buy_online_top'

class TestBuyOnlineTop < Testbase

  def test_that_tag_is_rendered
    # Fixture
    tag = '{% buy_online_top https://some.url %}'
    expected = '<a href="https://some.url"><button type="button" class="buy-button"><i class="fa-solid fa-cart-shopping fa-fw"></i>Buy online (Top version)</button></a>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end
end
