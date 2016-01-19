require 'jekyll'
require 'test/testbase'

require 'src/_plugins/product'

class TestProductImg < Testbase

  def test_that_img_tag_is_rendered_with_one_image
    # Fixture
    tag = '{% product_img The product; medium;
    /images/fancy-product-front.jpg
    %}'

    expected = '<img class="pp-main-image-medium"
      src="/images/fancy-product-front.jpg"
      alt="The product"
      title="The product"/>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end


  def test_that_img_tag_is_rendered_with_multitpe_images
    # Fixture
    tag = '{% product_img The product; medium;
    /images/fancy-product1.jpg;
    /images/fancy-product2.jpg;
    /images/fancy-product3.jpg
    %}'

    expected = '
<div id="carousel-images" class="carousel slide pp-main-image-medium" data-interval="false">
  <ol class="carousel-indicators">
    <li data-target="#carousel-images" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-images" data-slide-to="1"></li>
    <li data-target="#carousel-images" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="/images/fancy-product1.jpg" alt="The product">
    </div>
    <div class="item">
      <img src="/images/fancy-product2.jpg" alt="The product">
    </div>
    <div class="item">
      <img src="/images/fancy-product3.jpg" alt="The product">
    </div>
  </div>
  <a class="left carousel-control" href="#carousel-images" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-images" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    '

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end


  def test_that_highlight_tag_is_rendered
    # Fixture
    tag = '{% product_highlight
    fa-icon;
    Some title text;
    Some descriptive text
    %}'

    expected = '
    <h2><i class="fa fa-icon fa-fw"></i> Some title text</h2>
    <div class="pp-catch-phrase"> Some descriptive text </div>
    '

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end

end
