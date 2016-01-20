require 'jekyll'
require 'test/testbase'

require 'src/_plugins/coming_soon'

class TestComingSoon < Testbase

  def test_that_tag_is_rendered
    # Fixture
    tag = '{% coming_soon %}'
    expected = '<button type="button" disabled><i class="fa fa-gift fa-fw"></i><a href="#">Coming soon</a></button>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end
end
