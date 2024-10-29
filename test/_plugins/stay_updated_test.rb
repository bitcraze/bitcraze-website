require 'jekyll'
require 'test/testbase'

require 'src/_plugins/stay_updated'

class TestStayUpdated < Testbase

  def test_that_tag_is_rendered
    # Fixture
    tag = '{% stay_updated https://some.url %}'
    expected = '<div class="row"><div class="col-md-12"><div class="text-center"><a href="https://some.url"><button type="button" class="buy-button"><i class="fa-regular fa-envelope fa-fw"></i>Keep me updated!</button></a></div></div></div>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end
end
