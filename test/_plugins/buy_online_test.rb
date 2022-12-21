require 'jekyll'
require 'test/testbase'

require 'src/_plugins/buy_online'

class TestBuyOnline < Testbase

  def test_that_tag_is_rendered
    # Fixture
    tag = '{% buy_online https://some.url %}'
    expected = '<a href="https://some.url"><button type="button" class="buy-button"><i class="fa fa-shopping-cart fa-fw"></i>Buy online</button></a>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end
end
