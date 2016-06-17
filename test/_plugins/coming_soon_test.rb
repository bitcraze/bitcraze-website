require 'jekyll'
require 'test/testbase'

require 'src/_plugins/coming_soon'

class TestComingSoon < Testbase

  def test_that_tag_is_rendered
    # Fixture
    tag = '{% coming_soon %}'
    expected = '<div class="row"><div class="col-md-12 text-center"><h4>Soon available in stores, sign up for our newsletter.</h4></div></div>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end
end
