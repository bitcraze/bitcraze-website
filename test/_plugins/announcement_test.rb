require 'jekyll'
require 'test/testbase'

require 'src/_plugins/announcement'

class TestAnnouncement < Testbase

  def setup
    @converter_mock = MiniTest::Mock.new()

    @site_mock = MiniTest::Mock.new()
    @site_mock.expect(:find_converter_instance, @converter_mock, [Jekyll::Converters::Markdown])
  end

  def test_that_notification_is_rendered
    # Fixture
    Jekyll::StepInstruction::Intro.reset_id_counter
    @converter_mock.expect(:convert, 'converted md', ['md'])

    tag = '{% announcement My title; img_url %}md{% endannouncement %}'

    expected = '
    <div class="container-fluid sidebar-container">
        <div class="row content-area sidebar-row">
            <div class="col-sm-3 sidebar-col">
               <img src="img_url" class="img-responsive" alt="My title">
            </div>
            <div class="col-sm-9 sidebar-col">
              <h3>My title</h3>converted md</div>
        </div>
    </div>
     '


    # Test
    actual = Liquid::Template.parse(tag).render(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end
end
