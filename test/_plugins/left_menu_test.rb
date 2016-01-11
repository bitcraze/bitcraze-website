require 'jekyll'
require 'src/_plugins/left_menu'
include Jekyll::LeftMenu

class TestLeftMenu < Minitest::Test

  def test_that_ul_is_rendered_on_empty_input
    markup = ''
    expected = '
      <ul class="nav">
      </ul>
      '

    assert_tag(markup, expected)
  end


  def test_that_h2s_are_rendered
    # Fixture
    markup = '
      <h2 id="id1">title1</h2>
      <h2 id="id2">title2</h2>
    '

    expected = '
      <ul class="nav">
        <li><a href="#id1">title1</a></li>
        <li><a href="#id2">title2</a></li>
      </ul>
    '

    assert_tag(markup, expected)
  end


  def test_that_other_content_is_not_rendered
    # Fixture
    markup = '
      some text
      <h2 id="id1">title1</h2>
      <div>more text</div>
      <h2 id="id2">title2</h2>
      <h1>yey</h1>
    '

    expected = '
      <ul class="nav">
        <li><a href="#id1">title1</a></li>
        <li><a href="#id2">title2</a></li>
      </ul>
    '

    assert_tag(markup, expected)
  end


  def test_that_h2s_and_h3s_with_ending_h2_are_rendered
    # Fixture
    markup = '
      <h2 id="id1">title1</h2>
      <h3 id="id1_1">title1_1</h3>
      <h3 id="id1_2">title1_2</h3>
      <h3 id="id1_3">title1_3</h3>
      <h2 id="id2">title2</h2>
    '

    expected = '
      <ul class="nav">
        <li>
          <a href="#id1">title1</a>
          <ul>
            <li><a href="#id1_1">title1_1</a></li>
            <li><a href="#id1_2">title1_2</a></li>
            <li><a href="#id1_3">title1_3</a></li>
          </ul>
        </li>
        <li><a href="#id2">title2</a></li>
      </ul>
    '

    assert_tag(markup, expected)
  end


  def test_that_h2s_and_h3s_with_ending_h3_are_rendered
    # Fixture
    markup = '
      <h2 id="id1">title1</h2>
      <h3 id="id1_1">title1_1</h3>
    '

    expected = '
      <ul class="nav">
        <li>
          <a href="#id1">title1</a>
          <ul>
            <li><a href="#id1_1">title1_1</a></li>
          </ul>
        </li>
      </ul>
    '

    assert_tag(markup, expected)
  end


  def test_that_h3s_only_are_rendered
    # Fixture
    markup = '
      <h3 id="id1">title1</h3>
      <h3 id="id2">title2</h3>
    '

    expected = '
      <ul class="nav">
        <li>
          <ul>
            <li><a href="#id1">title1</a></li>
            <li><a href="#id2">title2</a></li>
          </ul>
        </li>
      </ul>
    '

    assert_tag(markup, expected)
  end


  def test_that_only_tags_with_ids_are_rendered
    # Fixture
    markup = '
      <h2 id="id1">title1</h2>
      <h3>should not render</h3>
      <h3 id="id1_1">title1_1</h3>
      <h2>should not render</h2>
    '

    expected = '
      <ul class="nav">
        <li>
          <a href="#id1">title1</a>
          <ul>
            <li><a href="#id1_1">title1_1</a></li>
          </ul>
        </li>
      </ul>
    '

    assert_tag(markup, expected)
  end


  def assert_tag(markup, expected)
    # Fixture

    # Test
    actual = bc_left_menu(markup)

    # Assert
    assert_html expected, actual
  end

  def assert_html(expected, actual)
    assert_equal(clean_html(expected), clean_html(actual))
  end

  def clean_html(markup)
    markup.gsub(/\s+/, ' ').gsub(/> </, '><').strip
  end
end
