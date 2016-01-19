require 'jekyll'
require 'test/testbase'

require 'src/_plugins/notice'

class TestNotice < Testbase

  def test_that_info_tag_is_rendered
    # Fixture
    tag = '{% notice_info My message %}'
    expected = '<div class="alert alert-success"><i class="fa fa-info fa-fw"></i>My message</div>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end

  def test_that_important_tag_is_rendered
    # Fixture
    tag = '{% notice_important My message %}'
    expected = '<div class="alert alert-danger"><i class="fa fa-exclamation-triangle fa-fw"></i>My message</div>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end


  def test_that_important_tag_handles_markdown
    # Fixture
    tag = '{% notice_important My message %}'
    expected = '<div class="alert alert-danger"><i class="fa fa-exclamation-triangle fa-fw"></i>My message</div>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end
end
