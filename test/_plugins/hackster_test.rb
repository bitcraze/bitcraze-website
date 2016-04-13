require 'jekyll'
require 'test/testbase'

require 'src/_plugins/hackster'

class TestHackster < Testbase

  def test_that_tag_is_rendered
    # Fixture
    tag = '{% hackster hello/world %}'
    expected = "<iframe frameborder='0' height='270' scrolling='no' src='https://www.hackster.io/hello/world/embed?use_route=project' width='360'></iframe>"

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end
end
