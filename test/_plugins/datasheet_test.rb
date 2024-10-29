require 'jekyll'
require 'test/testbase'


require 'src/_plugins/datasheet'

class TestDatasheetSection < Testbase

  def setup
    @site_mock = MiniTest::Mock.new()

    # Read hardware specs from test fixture directory
    @config = {"source" => "test/_plugins/fixtures"}
    @site_mock.expect(:config, @config)
  end

  def test_that_section_from_datasheet_renders
    # Fixture
    tag = '{% datasheet_section product_name; This is a section %}'

    # Note: the heading has been extended to level 4 as opposed to level 2 in the fixture file
    expected = "#### This is a section\n\nThis is some text\n\n"

    # Test
    actual = Liquid::Template.parse(tag).render!(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end

  def test_that_unfound_section_raises_exception
    # Fixture
    tag = '{% datasheet_section product_name; Unknown section %}'

    # Test
    # Assert
    assert_raises do
      Liquid::Template.parse(tag).render!(nil, registers: {site: @site_mock})
    end
  end

  def test_that_non_existing_product_raises_exception
    # Fixture
    tag = '{% datasheet_section missing_product; This is a section %}'

    # Test
    # Assert
    assert_raises do
      Liquid::Template.parse(tag).render!(nil, registers: {site: @site_mock})
    end
  end

  def test_that_too_few_arguments_for_section_raise_an_exception
    # Fixture
    tag = '{% datasheet_section product_name %}'

    # Test
    # Assert
    assert_raises do
      Liquid::Template.parse(tag).render!(nil, registers: {site: @site_mock})
    end
  end

  def test_that_the_last_section_from_data_sheet_renders
    # Fixture
    tag = '{% datasheet_section product_name; Final section %}'

    # Note: the heading has been extended to level 4 as opposed to level 2 in the fixture file
    expected = "#### Final section\n\nnothing after this\n"

    # Test
    actual = Liquid::Template.parse(tag).render!(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end

  def test_that_sub_sections_get_the_correct_heading_level
    # Fixture
    tag = '{% datasheet_section product_name; This is a third section %}'

    # Note: the heading has been extended to level 4 as opposed to level 2 in the fixture file
    expected = "#### This is a third section\n\nIt contains a sub section\n\n##### The sub section\n\nsub section text\n\n"

    # Test
    actual = Liquid::Template.parse(tag).render!(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end

  def test_that_headings_with_spaces_works
    # Fixture
    tag = '{% datasheet_section product_name; Section with spaces %}'

    # Note: the heading has been extended to level 4 as opposed to level 2 in the fixture file
    expected = "####   Section with spaces\n\nIt contains a sub section\n\n#####   Spaced sub section\n\nsub section text\n\n"

    # Test
    actual = Liquid::Template.parse(tag).render!(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end

  def test_that_datasheet_image_is_rendered
    # Fixture
    tag = '{% datasheet_section product_name; Section with tag %}'

    # Note: the heading has been extended to level 4 as opposed to level 2 in the fixture file
    expected = '#### Section with tag <img class="pp-main-image-medium" src="/documentation/hardware/product_name/image_name.jpg" alt="image_name.jpg"/>'

    # Test
    actual = Liquid::Template.parse(tag).render!(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end

  def test_that_too_few_arguments_for_product_status_raise_an_exception
    # Fixture
    tag = '{% datasheet_product_status %}'

    # Test
    # Assert
    assert_raises do
      Liquid::Template.parse(tag).render!(nil, registers: {site: @site_mock})
    end
  end

  def test_that_product_status_renders_for_active_product
    # Fixture
    tag = '{% datasheet_product_status product_name %}'

    expected = ""

    # Test
    actual = Liquid::Template.parse(tag).render!(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end

  def test_that_product_status_renders_for_early_access_product
    # Fixture
    tag = '{% datasheet_product_status early_access_product %}'

    expected = '''<div class="alert alert-success"><i class="fa-solid fa-info fa-fw"></i>
    This product is in the <a href="/development/early-access/">Early Access stage</a>.</div>'''

    # Test
    actual = Liquid::Template.parse(tag).render!(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end

  def test_that_product_status_renders_for_eol_product
    # Fixture
    tag = '{% datasheet_product_status eol_product %}'

    expected = '''<div class="alert alert-success"><i class="fa-solid fa-circle-exclamation"></i>
    This product has reach end-of-life and is not longer being manufactured. Stock might
    still be available in our online store or though retailers, but it is not recommended
    to be used for new set-ups.</div>'''

    # Test
    actual = Liquid::Template.parse(tag).render!(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end

  def test_that_product_status_raises_exception_for_unknown_state
    # Fixture
    tag = '{% datasheet_product_status invalid_status_product %}'

    # Test
    # Assert
    assert_raises do
      actual = Liquid::Template.parse(tag).render!(nil, registers: {site: @site_mock})
    end
  end

end
