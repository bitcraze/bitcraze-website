require 'jekyll'
require 'test/testbase'

require 'src/_plugins/product_highlight'

class TestProductHighlight < Testbase

  def test_that_tag_is_rendered
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
