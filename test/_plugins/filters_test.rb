require 'jekyll'
require 'src/_plugins/filters'
include Jekyll::BcFilters

class TestLeftMenu < Minitest::Test

  def test_that_links_to_the_online_shop_is_rendered_correctly
    # Fixture
    url = 'http://some.url'
    expected = '<button type="button"><i class="fa fa-shopping-cart fa-fw"></i><a href="' + url + '">Buy online</a></button>'

    # Test
    actual = buy_online(url)

    # Assert
    assert_equal(expected, actual)
  end
end
