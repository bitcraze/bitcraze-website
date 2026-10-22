require 'jekyll'
require 'test/testbase'

require 'src/_plugins/repo_doc_link'

class TestRepoDocLink < Testbase

  def setup
    @site_mock = Minitest::Mock.new()

    @tag_list = {
      'crazyflie-firmware' => ['master', '2026.08', '2026.04'],
      'crazyradio-firmware' => ['master'],
    }

    @data = {'docs_tag_list' => @tag_list}
    @site_mock.expect(:data, @data)
  end

  def test_that_repo_doc_url_raises_if_repo_is_not_found
    # Fixture
    tag = '{% repo_doc_url unknown-repo %}'

    # Test
    # Assert
    assert_raises do
      Liquid::Template.parse(tag).render!(nil, registers: {site: @site_mock})
    end
  end

  def test_that_repo_doc_url_renders_latest_release_when_available
    # Fixture
    tag = '{% repo_doc_url crazyflie-firmware %}'
    expected = '/documentation/repository/crazyflie-firmware/2026.08/'

    # Test
    actual = Liquid::Template.parse(tag).render!(nil, registers: {site: @site_mock})

    # Assert
    assert_equal(expected, actual)
  end

  def test_that_repo_doc_url_falls_back_to_dev_branch_when_no_release_exists
    # Fixture
    tag = '{% repo_doc_url crazyradio-firmware %}'
    expected = '/documentation/repository/crazyradio-firmware/master/'

    # Test
    actual = Liquid::Template.parse(tag).render!(nil, registers: {site: @site_mock})

    # Assert
    assert_equal(expected, actual)
  end

  def test_that_repo_doc_url_renders_with_subpath
    # Fixture
    tag = '{% repo_doc_url crazyflie-firmware; building-and-flashing/build %}'
    expected = '/documentation/repository/crazyflie-firmware/2026.08/building-and-flashing/build/'

    # Test
    actual = Liquid::Template.parse(tag).render!(nil, registers: {site: @site_mock})

    # Assert
    assert_equal(expected, actual)
  end
end
