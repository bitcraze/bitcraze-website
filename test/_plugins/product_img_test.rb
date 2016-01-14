require 'jekyll'
require 'test/testbase'

require 'src/_plugins/product_img'

class TestProductImg < Testbase

  def test_that_tag_is_rendered_with_one_image
    # Fixture
    tag = '{% product_img The product;
    /images/fancy-product-front.jpg: medium: front
    %}'

    expected = '<img class="pp-main-image-medium"
      src="/images/fancy-product-front.jpg"
      alt="The product - front"
      title="The product - front"/>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end
end
