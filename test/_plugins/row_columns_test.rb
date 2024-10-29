require 'jekyll'
require 'test/testbase'

require 'src/_plugins/row_columns'

class TestRowCols < Testbase

  def setup
    @converter_mock = MiniTest::Mock.new()
    @site_mock = MiniTest::Mock.new()

    @converter_mock.expect(:convert, 'converted md1', ['md1'])
    @converter_mock.expect(:convert, 'converted md2', ['md2'])
    @converter_mock.expect(:convert, 'converted md3', ['md3'])

    @site_mock.expect(:find_converter_instance, @converter_mock, [Jekyll::Converters::Markdown])
    @site_mock.expect(:find_converter_instance, @converter_mock, [Jekyll::Converters::Markdown])
    @site_mock.expect(:find_converter_instance, @converter_mock, [Jekyll::Converters::Markdown])
  end

  def test_that_row_with_three_columns_is_rendered
    # Fixture

    tag = '{% row %}{% column 4 %}md1{% endcolumn %}{% column 3 %}md2{% endcolumn %}{% column 5 %}md3{% endcolumn %}{% endrow %}'
    expected = '
    <section class="row content-area">
        <div class="col-md-4">converted md1</div>
        <div class="col-md-3">converted md2</div>
        <div class="col-md-5">converted md3</div>
    </section>'

    # Test
    actual = Liquid::Template.parse(tag).render(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end

  def test_that_wrong_total_column_width_raises
    # Fixture
    tag = '{% row %}{% column 11 %}md1{% endcolumn %}{% endrow %}'

    # Test
    # Assert
    assert_raises do
      Liquid::Template.parse(tag).render!(nil, registers: {site: @site_mock})
    end
  end

  def test_that_full_width_row_is_rendered
    # Fixture

    tag = '{% row_full %}md1{% endrow_full %}'
    expected = '
    <section class="row content-area">
        <div class="col-md-12">converted md1</div>
    </section>'

    # Test
    actual = Liquid::Template.parse(tag).render(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end

  def test_that_row_image_text_links_is_rendered
    # Fixture

    tag = '{% row_image_text_links The title;the/image.jpg%}md1{% row_text %}md1{% endrow_text %}{% row_links %}md2{% endrow_links %}{% endrow_image_text_links %}'
    expected = '
    <section class="row content-area">
        <div class="col-md-12"><h3 id="the-title">The title</h3></div>
    </section>
    <section class="row content-area">
        <div class="col-md-3 doc-section-image"><img src="the/image.jpg" alt="The title"></div>
        <div class="col-md-6">converted md1</div>
        <div class="col-md-3">converted md2</div>
    </section>'

    # Test
    actual = Liquid::Template.parse(tag).render(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end

  def test_that_row_image_text_links_is_rendered_without_image
    # Fixture

    tag = '{% row_image_text_links The title%}md1{% row_text %}md1{% endrow_text %}{% row_links %}md2{% endrow_links %}{% endrow_image_text_links %}'
    expected = '
    <section class="row content-area">
        <div class="col-md-12"><h3 id="the-title">The title</h3></div>
    </section>
    <section class="row content-area">
        <div class="col-md-3 doc-section-image"></div>
        <div class="col-md-6">converted md1</div>
        <div class="col-md-3">converted md2</div>
    </section>'

    # Test
    actual = Liquid::Template.parse(tag).render(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end

  def test_that_row_image_text_links_is_rendered_without_links
    # Fixture

    tag = '{% row_image_text_links The title%}md1{% row_text %}md1{% endrow_text %}{% endrow_image_text_links %}'
    expected = '
    <section class="row content-area">
        <div class="col-md-12"><h3 id="the-title">The title</h3></div>
    </section>
    <section class="row content-area">
        <div class="col-md-3 doc-section-image"></div>
        <div class="col-md-6">converted md1</div>
        <div class="col-md-3"></div>
    </section>'

    # Test
    actual = Liquid::Template.parse(tag).render(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end

  def test_that_row_video_text_links_is_rendered
    # Fixture

    tag = '{% row_video_text_links The title;the/video.mp4%}md1{% row_text %}md1{% endrow_text %}{% row_links %}md2{% endrow_links %}{% endrow_video_text_links %}'
    expected = '
    <section class="row content-area">
        <div class="col-md-12"><h3 id="the-title">The title</h3></div>
    </section>
    <section class="row content-area">
        <div class="col-md-3 doc-section-image video-no-controls">
          <video autobuffer controls autoplay muted loop>
            <source src="the/video.mp4" type="video/mp4">
          </video>
        </div>
        <div class="col-md-6">converted md1</div>
        <div class="col-md-3">converted md2</div>
    </section>'

    # Test
    actual = Liquid::Template.parse(tag).render(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end


  def test_that_row_icon_text_links_is_rendered
    # Fixture

    tag = '{% row_icon_text_links The title;fa-icon%}md1{% row_text %}md1{% endrow_text %}{% row_links %}md2{% endrow_links %}{% endrow_icon_text_links %}'
    expected = '
    <section class="row content-area">
        <div class="col-md-12"><h3 id="the-title">The title</h3></div>
    </section>
    <section class="row content-area">
        <div class="col-md-2">
            <i class="fa-solid fa-icon fa-5x"></i>
        </div>
        <div class="col-md-7">converted md1</div>
        <div class="col-md-3">converted md2</div>
    </section>'

    # Test
    actual = Liquid::Template.parse(tag).render(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end
end
