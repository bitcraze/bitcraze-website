require 'jekyll'
require 'test/testbase'

require 'src/_plugins/media'

class TestMedia < Testbase

  def test_that_img_is_rendered
    # Fixture
    tag = '{% img The title; narrow; /images/fancy-product-front.jpg %}'

    expected = '<div class="media-row-narrow">
        <img src="/images/fancy-product-front.jpg" alt="The title" title="The title"/>
      </div>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end


  def test_that_img_is_rendered_with_circle
    # Fixture
    tag = '{% img The title; narrow; /images/fancy-product-front.jpg; circle-border %}'

    expected = '<div class="media-row-narrow">
        <img src="/images/fancy-product-front.jpg" alt="The title" title="The title" class="img-circle-border"/>
      </div>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end


  def test_that_tutorial_video_is_rendered
    # Fixture
    tag = '{% tutorialVideo /video/plop.mp4 %}'
    expected = '<div class="media-row-medium">
        <video autobuffer controls autoplay muted loop><source src="/video/plop.mp4" type="video/mp4"></video>
      </div>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end


  def test_that_youtube_is_rendered
    # Fixture
    tag = '{% youtube id; narrow; 16by9 %}'
    expected = '<div class="media-row-narrow">
                  <div class="embed-responsive embed-responsive-16by9">
                    <div class="embed-responsive-item video-item-delayed-load" data-video-id="id" style="background:url(https://i1.ytimg.com/vi/id/0.jpg);" onclick="kraken.loadYoutubeVideo(this)">
                      <i class="fa fa-play-circle fa-3x"></i>
                    </div>
                  </div>
                </div>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end


  def test_that_map_is_rendered
    # Fixture
    tag = '{% map id; wide %}'
    expected = '<div class="media-row-wide">
                    <div class="embed-responsive embed-responsive-1by1">
                        <iframe class="embed-responsive-item-medium" src="https://www.google.com/maps/embed?pb=id" allowfullscreen="allowfullscreen"></iframe>
                    </div>
                </div>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end


  def test_that_used_by_text_is_rendered
    # Fixture
    tag = '{% used_by_text company %}'
    expected = '<div class="col-xs-3 col-sm-2 col-md-2 used_by_box_text">company</div>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end


  def test_that_used_by_text_is_rendered_with_link
    # Fixture
    tag = '{% used_by_text company; https://the.url %}'
    expected = '<div class="col-xs-3 col-sm-2 col-md-2 used_by_box_text"><a href="https://the.url" target="_blank" rel="noopener noreferrer">company</a></div>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end


  def test_that_used_by_logo_is_rendered
    # Fixture
    tag = '{% used_by_logo company; my_image %}'
    expected = '<div class="col-xs-3 col-sm-2 col-md-2 used_by_box">
                  <img class="img-responsive" src="my_image" alt="company" title="company"/>
                </div>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end


  def test_that_used_by_logo_is_rendered_with_link
    # Fixture
    tag = '{% used_by_logo company; my_image; https://the.url %}'
    expected = '<div class="col-xs-3 col-sm-2 col-md-2 used_by_box">
                  <a href="https://the.url" target="_blank" rel="noopener noreferrer">
                    <img class="img-responsive" src="my_image" alt="company" title="company"/>
                  </a>
                </div>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end


  def test_that_single_gallery_youtube_is_rendered
    # Fixture
    tag = '{% media_gallery %}{% gallery_youtube id; 16by9; Some header %}{% endmedia_gallery %}'
    expected = '<div class="media-gallery">
                  <div class="row">
                    <div class="col-md-6">
                      <div>
                        <h3 id="some-header">Some header</h3>
                      </div>
                      <div class="embed-responsive embed-responsive-16by9">
                        <div class="embed-responsive-item video-item-delayed-load" data-video-id="id" style="background:url(https://i1.ytimg.com/vi/id/0.jpg);" onclick="kraken.loadYoutubeVideo(this)">
                          <i class="fa fa-play-circle fa-3x"></i>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end


  def test_that_multiple_gallery_youtube_is_rendered
    # Fixture
    tag = '{% media_gallery %}{% gallery_youtube id1; 16by9; Some header %}{% gallery_youtube id2; 16by9; Other header %}{% gallery_youtube id3; 16by9; Some header %}{% gallery_youtube id4; 16by9; Some header %}{% endmedia_gallery %}'
    expected = '<div class="media-gallery">
                  <div class="row">
                    <div class="col-md-6">
                      <div>
                        <h3 id="some-header">Some header</h3>
                      </div>
                      <div class="embed-responsive embed-responsive-16by9">
                        <div class="embed-responsive-item video-item-delayed-load" data-video-id="id1" style="background:url(https://i1.ytimg.com/vi/id1/0.jpg);" onclick="kraken.loadYoutubeVideo(this)">
                          <i class="fa fa-play-circle fa-3x"></i>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div>
                        <h3 id="other-header">Other header</h3>
                      </div>
                      <div class="embed-responsive embed-responsive-16by9">
                        <div class="embed-responsive-item video-item-delayed-load" data-video-id="id2" style="background:url(https://i1.ytimg.com/vi/id2/0.jpg);" onclick="kraken.loadYoutubeVideo(this)">
                          <i class="fa fa-play-circle fa-3x"></i>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <div>
                        <h3 id="some-header">Some header</h3>
                      </div>
                      <div class="embed-responsive embed-responsive-16by9">
                        <div class="embed-responsive-item video-item-delayed-load" data-video-id="id3" style="background:url(https://i1.ytimg.com/vi/id3/0.jpg);" onclick="kraken.loadYoutubeVideo(this)">
                          <i class="fa fa-play-circle fa-3x"></i>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div>
                        <h3 id="some-header">Some header</h3>
                      </div>
                      <div class="embed-responsive embed-responsive-16by9">
                        <div class="embed-responsive-item video-item-delayed-load" data-video-id="id4" style="background:url(https://i1.ytimg.com/vi/id4/0.jpg);" onclick="kraken.loadYoutubeVideo(this)">
                          <i class="fa fa-play-circle fa-3x"></i>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end
end
