require 'jekyll'
require 'test/testbase'

require 'src/_plugins/tabs'

class TestTabs < Testbase
  include Jekyll::Tabs

  def setup
    Jekyll::Tabs::Group.reset_id

    @converter_mock = MiniTest::Mock.new()
    @converter_mock.expect(:convert, 'converted md', ['md'])
    @converter_mock.expect(:convert, 'converted md', ['md'])

    @site_mock = MiniTest::Mock.new()
    @site_mock.expect(:find_converter_instance, @converter_mock, [Jekyll::Converters::Markdown])
    @site_mock.expect(:find_converter_instance, @converter_mock, [Jekyll::Converters::Markdown])
  end

  def test_that_single_tab_is_rendered
    # Fixture
    tag = '{% tabgroup %}{% tab Single tab %}md{% endtab %}{% endtabgroup %}'
    expected = '
      <div>
        <ul class="nav nav-tabs" role="tablist">
          <li role="presentation" class="active">
            <a href="#tab-id-1-1" role="tab" data-toggle="tab">Single tab</a>
          </li>
        </ul>
        <div class="tab-content">
          <div role="tabpanel" class="tab-pane fade in active" id="tab-id-1-1">converted md</div>
        </div>
      </div>'

    # Test
    actual = Liquid::Template.parse(tag).render(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end


  def test_that_multiple_tabs_are_rendered
    # Fixture
    tag = '{% tabgroup %}{% tab First tab %}md{% endtab %}{% tab Second tab %}md{% endtab %}{% endtabgroup %}'
    expected = '
      <div>
        <ul class="nav nav-tabs" role="tablist">
          <li role="presentation" class="active">
            <a href="#tab-id-1-1" role="tab" data-toggle="tab">First tab</a>
          </li>
          <li role="presentation">
            <a href="#tab-id-1-2" role="tab" data-toggle="tab">Second tab</a>
          </li>
        </ul>
        <div class="tab-content">
          <div role="tabpanel" class="tab-pane fade in active" id="tab-id-1-1">converted md</div>
          <div role="tabpanel" class="tab-pane fade in" id="tab-id-1-2">converted md</div>
        </div>
      </div>'

    # Test
    actual = Liquid::Template.parse(tag).render(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end


  def test_that_multiple_groups_have_unique_ids
    # Fixture
    tag = '{% tabgroup %}{% tab First tab %}md{% endtab %}{% endtabgroup %}{% tabgroup %}{% tab Second tab %}md{% endtab %}{% endtabgroup %}'
    expected = '
      <div>
        <ul class="nav nav-tabs" role="tablist">
          <li role="presentation" class="active">
            <a href="#tab-id-1-1" role="tab" data-toggle="tab">First tab</a>
          </li>
        </ul>
        <div class="tab-content">
          <div role="tabpanel" class="tab-pane fade in active" id="tab-id-1-1">converted md</div>
        </div>
      </div>
      <div>
        <ul class="nav nav-tabs" role="tablist">
          <li role="presentation" class="active">
            <a href="#tab-id-2-1" role="tab" data-toggle="tab">Second tab</a>
          </li>
        </ul>
        <div class="tab-content">
          <div role="tabpanel" class="tab-pane fade in active" id="tab-id-2-1">converted md</div>
        </div>
      </div>'

    # Test
    actual = Liquid::Template.parse(tag).render(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end
end
