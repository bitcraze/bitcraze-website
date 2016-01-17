require 'jekyll'
require 'test/testbase'

require 'src/_plugins/img'

class TestProductImg < Testbase

  def test_that_img_is_rendered
    # Fixture
    tag = '{% img The title; narrow; /images/fancy-product-front.jpg %}'

    expected = '<div class="plm-img-row-narrow">
        <img src="/images/fancy-product-front.jpg" alt="The title" title="The title"/>
      </div>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end

end
