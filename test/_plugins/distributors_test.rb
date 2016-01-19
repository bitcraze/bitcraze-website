require 'jekyll'
require 'test/testbase'

require 'src/_plugins/distributors'

class TestDistributors < Testbase

  def test_that_tag_is_rendered
    # Fixture
    tag = '{% distributor Name; http://some.url; some/image.png %}'
    expected = '<a href="http://some.url"><img class="plm-content-logo" src="some/image.png" alt="Name"/></a>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end
end
