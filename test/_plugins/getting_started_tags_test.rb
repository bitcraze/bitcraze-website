require 'jekyll'
require 'test/testbase'

require 'src/_plugins/getting_started_tags'

class TestGettingStartedTags < Testbase

  def setup
    @converter_mock = MiniTest::Mock.new()
    @converter_mock.expect(:convert, 'converted md', ['md'])

    @site_mock = MiniTest::Mock.new()
    @site_mock.expect(:find_converter_instance, @converter_mock, [Jekyll::Converters::Markdown])
  end

  def test_that_intro_is_rendered
    # Fixture
    Jekyll::GettingStarted::Intro.reset_id_counter

    tag = '{% gs_intro My title %}md{% endgs_intro %}'

    expected = '<div class="plm-content-intro-text"><h2 id="intro1">My title</h2>converted md</div>'

    # Test
    actual = Liquid::Template.parse(tag).render(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end


  def test_that_intro_is_rendered_with_specific_id
    # Fixture
    Jekyll::GettingStarted::Intro.reset_id_counter

    tag = '{% gs_intro My title; my-id %}md{% endgs_intro %}'

    expected = '<div class="plm-content-intro-text"><h2 id="my-id">My title</h2>converted md</div>'

    # Test
    actual = Liquid::Template.parse(tag).render(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end


  def test_that_step_is_rendered
    # Fixture
    Jekyll::GettingStarted::Intro.reset_id_counter

    tag = '{% gs_step My title %}md{% endgs_step %}'

    expected = '<div class="plm-content-info-step"><h3 id="infostep1">My title</h3>converted md</div>'

    # Test
    actual = Liquid::Template.parse(tag).render(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end


  def test_that_step_is_rendered_with_specific_id
    # Fixture
    Jekyll::GettingStarted::Intro.reset_id_counter

    tag = '{% gs_step My title; my-id %}md{% endgs_step %}'

    expected = '<div class="plm-content-info-step"><h3 id="my-id">My title</h3>converted md</div>'

    # Test
    actual = Liquid::Template.parse(tag).render(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end
end
