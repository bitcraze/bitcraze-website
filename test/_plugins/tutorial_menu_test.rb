require 'jekyll'
require 'test/testbase'

require 'src/_plugins/tutorial_menu'
include Jekyll::TutorialMenu

class TestTutorialMenu < Testbase

  def test_that_nothing_is_rendered_on_empty_input
    assert_menu('', '')
  end


  def test_that_headings_without_an_id_are_ignored
    markup = '
      <h1 id="id1">title1</h1>
      <h1>no id</h1>
      <p>body text</p>
    '

    expected = '
      <ul class="tutorial-menu">
        <li class="tm-item tm-part" data-target="id1"><a href="#id1">title1</a></li>
      </ul>
    '

    assert_menu(markup, expected)
  end


  def test_that_each_level_gets_its_own_class
    markup = '
      <h1 id="part">part</h1>
      <h2 id="section">section</h2>
      <h3 id="step">step</h3>
    '

    expected = '
      <ul class="tutorial-menu">
        <li class="tm-item tm-part tm-has-children" data-target="part"><a href="#part">part</a>
          <ul class="tm-children">
            <li class="tm-item tm-section tm-has-children" data-target="section"><a href="#section">section</a>
              <ul class="tm-children">
                <li class="tm-item tm-step" data-target="step"><a href="#step">step</a></li>
              </ul>
            </li>
          </ul>
        </li>
      </ul>
    '

    assert_menu(markup, expected)
  end


  def test_that_siblings_stay_at_the_same_level
    markup = '
      <h1 id="part1">part1</h1>
      <h1 id="part2">part2</h1>
    '

    expected = '
      <ul class="tutorial-menu">
        <li class="tm-item tm-part" data-target="part1"><a href="#part1">part1</a></li>
        <li class="tm-item tm-part" data-target="part2"><a href="#part2">part2</a></li>
      </ul>
    '

    assert_menu(markup, expected)
  end


  # A si_step placed directly under a si_part, which is how most of the
  # assembly steps in the tutorials are written.
  def test_that_a_skipped_level_still_nests
    markup = '
      <h1 id="part">part</h1>
      <h3 id="step">step</h3>
    '

    expected = '
      <ul class="tutorial-menu">
        <li class="tm-item tm-part tm-has-children" data-target="part"><a href="#part">part</a>
          <ul class="tm-children">
            <li class="tm-item tm-step" data-target="step"><a href="#step">step</a></li>
          </ul>
        </li>
      </ul>
    '

    assert_menu(markup, expected)
  end


  def test_that_going_back_up_closes_the_branch
    markup = '
      <h1 id="part1">part1</h1>
      <h2 id="section">section</h2>
      <h3 id="step">step</h3>
      <h1 id="part2">part2</h1>
    '

    expected = '
      <ul class="tutorial-menu">
        <li class="tm-item tm-part tm-has-children" data-target="part1"><a href="#part1">part1</a>
          <ul class="tm-children">
            <li class="tm-item tm-section tm-has-children" data-target="section"><a href="#section">section</a>
              <ul class="tm-children">
                <li class="tm-item tm-step" data-target="step"><a href="#step">step</a></li>
              </ul>
            </li>
          </ul>
        </li>
        <li class="tm-item tm-part" data-target="part2"><a href="#part2">part2</a></li>
      </ul>
    '

    assert_menu(markup, expected)
  end


  # Pages that never use si_part start at h2, and those become the top level.
  def test_that_a_page_without_h1_starts_at_h2
    markup = '
      <h2 id="section">section</h2>
      <h3 id="step">step</h3>
    '

    expected = '
      <ul class="tutorial-menu">
        <li class="tm-item tm-section tm-has-children" data-target="section"><a href="#section">section</a>
          <ul class="tm-children">
            <li class="tm-item tm-step" data-target="step"><a href="#step">step</a></li>
          </ul>
        </li>
      </ul>
    '

    assert_menu(markup, expected)
  end


  def test_that_markup_in_a_title_is_kept
    markup = '
      <h1 id="id1">Crazyflie<sup>&#174;</sup></h1>
    '

    expected = '
      <ul class="tutorial-menu">
        <li class="tm-item tm-part" data-target="id1"><a href="#id1">Crazyflie<sup>®</sup></a></li>
      </ul>
    '

    assert_menu(markup, expected)
  end


  def assert_menu(markup, expected)
    # Test
    actual = bc_tutorial_menu(markup)

    # Assert
    assert_html expected, actual
  end
end
