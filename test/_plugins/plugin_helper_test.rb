require 'jekyll'
require 'test/testbase'

require 'src/_plugins/plugin_helper'

class TestPluginHelper < Testbase
  include Jekyll::PluginHelper

  def test_that_arguments_are_split
    # Fixture
    args = 'qwe;asd;zxc'
    expected = ['qwe', 'asd', 'zxc']

    # Test
    actual = parse_args(args)

    # Assert
    assert_equal(expected, actual)
  end

  def test_that_arguments_are_striped
    # Fixture
    args = '  qwe  asd ; zxc   '
    expected = ['qwe  asd', 'zxc']

    # Test
    actual = parse_args(args)

    # Assert
    assert_equal(expected, actual)
  end

  def test_that_single_argument_is_handled
    # Fixture
    args = ' qwe '
    expected = ['qwe']

    # Test
    actual = parse_args(args)

    # Assert
    assert_equal(expected, actual)
  end

  def test_that_plugin_data_is_returned
    # Fixture
    context = {'page' => {}}
    plugin_name = "some-name"
    expected = 17

    # Test
    actual = page_plugin_data(context, plugin_name)
    actual['param'] = expected

    # Assert
    assert_equal(expected, context['page']['bc_page_plugin_data'][plugin_name]['param'])
  end

  def test_that_id_is_generated_from_title()
    # Fixture
    expected = "my-title-123"

    # Test
    actual = generate_id("My title !'# 123")

    # Assert
    assert_equal(expected, actual)
  end
end