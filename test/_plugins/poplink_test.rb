require 'jekyll'
require 'test/testbase'

require 'src/_plugins/poplink'

class TestPoplink < Testbase

  def setup
    @site_mock = MiniTest::Mock.new()

    @content_path = "to/content"
    @poplink_conf = {
      "content_dir" => @content_path,
      "poplinks" => {
        "the-id" => {
          "title" => "Default title",
          "default-link" => "/default/link/",
          "content" => "first.md",
        },
        "other-id" => {
          "title" => "Second title",
          "default-link" => "/second/link/",
          "content" => "second.md",
        },
      }
    }

    @data = {"poplink" => @poplink_conf}
    @site_mock.expect(:data, @data)

    Jekyll::Poplink::Poplink.reset_id_counter
  end

  def test_that_poplink_renders
    # Fixture
    tag = '{% poplink the-id %}'
    expected = '<a id="poplink1" class="poplink" onclick="return kraken.poplinkShowPopup(\'poplink1\', \'the-id\');" href="/default/link/">Default title&nbsp;<i class="fa-solid fa-caret-right"></i></a>'

    # Test
    actual = Liquid::Template.parse(tag).render!(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end

  def test_that_poplink_with_other_title_renders
    # Fixture
    tag = '{% poplink the-id; the other title %}'
    expected = '<a id="poplink1" class="poplink" onclick="return kraken.poplinkShowPopup(\'poplink1\', \'the-id\');" href="/default/link/">the other title&nbsp;<i class="fa-solid fa-caret-right"></i></a>'

    # Test
    actual = Liquid::Template.parse(tag).render!(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end
end
