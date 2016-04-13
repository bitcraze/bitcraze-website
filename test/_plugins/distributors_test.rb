require 'jekyll'
require 'test/testbase'

require 'src/_plugins/distributors'

class TestDistributors < Testbase

  def test_that_distributor_tag_is_rendered
    # Fixture
    tag = '{% distributor Name; http://some.url; some/image.png %}'
    expected = '<a href="http://some.url"><img class="distributor-logo" src="some/image.png" alt="Name"/></a>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end


  def test_that_continent_tag_is_rendered
    # Fixture
    Jekyll::Distributors::Continent.reset_id_counter
    tag = '{% continent Asia %}'
    expected = '<h2 class="distributor-continent" id="continent1">Asia</h2>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end


  def test_that_country_tag_is_rendered
    # Fixture
    Jekyll::Distributors::Country.reset_id_counter
    tag = '{% country Sweden %}'
    expected = '<h3 id="country1">Sweden</h3>'

    # Test
    actual = Liquid::Template.parse(tag).render

    # Assert
    assert_html(expected, actual)
  end
end
