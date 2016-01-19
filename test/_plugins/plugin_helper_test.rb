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
end