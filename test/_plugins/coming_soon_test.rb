require 'jekyll'
require 'test/testbase'

require 'src/_plugins/coming_soon'

class TestComingSoon < Testbase

  def test_that_tag_is_rendered
    # Fixture
    tag = '{% coming_soon %}'

    expected = '<div class="row">
                  <div class="col-md-12">
                     <button type="button" class="buy-button" disabled><i class="fa-solid fa-cart-shopping fa-fw"></i>Coming soon</button>
                     <h4>Soon available in stores, <a title="Signup for newsletter" href="/signup/">sign up for our newsletter.</a></h4>
                   </div>
                 </div>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end
end
