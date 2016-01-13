class Testbase < Minitest::Test
  def assert_html(expected, actual)
    assert_equal(clean_html(expected), clean_html(actual))
  end

  def clean_html(markup)
    markup.gsub(/\s+/, ' ').gsub(/> </, '><').strip
  end
end
