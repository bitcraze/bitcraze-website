require 'jekyll'
require 'test/testbase'

require 'src/_plugins/media'

class TestMedia < Testbase

  def test_that_img_is_rendered
    # Fixture
    tag = '{% img The title; narrow; /images/fancy-product-front.jpg %}'

    expected = '<div class="img-row-narrow">
        <img src="/images/fancy-product-front.jpg" alt="The title" title="The title"/>
      </div>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end


  def test_that_vine_is_rendered
    # Fixture
    tag = '{% vine vine-id %}'
    expected = '<div class="vine-row">
                  <div class="outer-vine">
                    <iframe class="inner-vine vine-embed" src="https://vine.co/v/vine-id/embed/simple"></iframe>
                    <script src="//platform.vine.co/static/scripts/embed.js"></script>
                  </div>
                </div>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end

end
