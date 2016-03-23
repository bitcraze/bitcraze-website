require 'jekyll'
require 'test/testbase'

require 'src/_plugins/buy_online'

class TestBuyOnline < Testbase

  def test_that_tag_is_rendered
    # Fixture
    tag = '{% buy_online http://some.url %}'
    expected = '<button type="button" class="buy-button"><i class="fa fa-shopping-cart fa-fw"></i><a href="http://some.url">Buy online</a></button>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end
end
