require 'jekyll'
require 'test/testbase'

require 'src/_plugins/link'

class TestLink < Testbase

  def setup
    @site_mock = MiniTest::Mock.new()

    @pages = []
    @site_mock.expect(:pages, @pages)
  end

  def test_that_id_url_raises_if_page_id_is_not_found
    # Fixture
    tag = '{% id_url unknown_id %}'

    # Test
    # Assert
    assert_raises do
      actual = Liquid::Template.parse(tag).render!(nil, registers: {site: @site_mock})
    end
  end

  def test_that_id_url_renders_url
    # Fixture
    id = 'my_id'
    url = '/my/url/'

    data = {'page_id' => id}
    page_mock = MiniTest::Mock.new()
    page_mock.expect(:data, data)
    page_mock.expect(:url, url)

    @pages << page_mock

    tag = '{% id_url my_id %}'
    expected = url

    # Test
    actual = Liquid::Template.parse(tag).render!(nil, registers: {site: @site_mock})

    # Assert
    assert_equal(expected, actual)
  end

  def test_that_id_url_renders_url_with_id
    # Fixture
    id = 'my_id'
    url = '/my/url/'
    element_id = 'my_tag'

    data = {'page_id' => id}
    page_mock = MiniTest::Mock.new()
    page_mock.expect(:data, data)
    page_mock.expect(:url, url)

    @pages << page_mock

    tag = '{% id_url my_id; my_tag %}'
    expected = url + '#' + element_id

    # Test
    actual = Liquid::Template.parse(tag).render!(nil, registers: {site: @site_mock})

    # Assert
    assert_equal(expected, actual)
  end

  def test_that_id_link_raises_if_page_id_is_not_found
    # Fixture
    tag = '{% id_link unknown_id %}'

    # Test
    # Assert
    assert_raises do
      actual = Liquid::Template.parse(tag).render!(nil, registers: {site: @site_mock})
    end
  end

  def test_that_id_link_renders
    # Fixture
    id = 'my_id'
    url = '/my/url/'
    title = "The title"

    data = {'page_id' => id, 'title' => title}
    page_mock = MiniTest::Mock.new()
    page_mock.expect(:data, data)
    page_mock.expect(:data, data)
    page_mock.expect(:url, url)

    @pages << page_mock

    tag = '{% id_link my_id %}'
    expected = '<a href="/my/url/">The title</a>'

    # Test
    actual = Liquid::Template.parse(tag).render!(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end

  def test_that_id_link_with_tag_renders
    # Fixture
    id = 'my_id'
    url = '/my/url/'
    title = "The title"

    data = {'page_id' => id, 'title' => title}
    page_mock = MiniTest::Mock.new()
    page_mock.expect(:data, data)
    page_mock.expect(:data, data)
    page_mock.expect(:url, url)

    @pages << page_mock

    tag = '{% id_link my_id; my_tag %}'
    expected = '<a href="/my/url/#my_tag">The title</a>'

    # Test
    actual = Liquid::Template.parse(tag).render!(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end
end
