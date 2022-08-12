require 'html-proofer'
require_relative 'helper'

require 'tools/validate/src/url_check'



class TestUrlCheck < Minitest::Test

  def test_ok_links
    # Fixture
    html = "#{FIXTURES_DIR}/ok-links.html"

    # Test
    proofer = run_proofer(html)

    # Assert
    assert_equal(proofer.failed_checks, [])
  end

  def test_that_www_root_is_rejected
    # Fixture
    html = "#{FIXTURES_DIR}/www-bitcraze-io.html"

    # Test
    proofer = run_proofer(html)

    # Assert
    assert_equal(proofer.failed_checks.length, 1)
    assert_equal(proofer.failed_checks[0].description, "Link to www.bitcraze.io is not allowed. Use relative links instead")
    assert_equal(proofer.failed_checks[0].path, "tools/validate/test/fixtures/www-bitcraze-io.html")
    assert_equal(proofer.failed_checks[0].line, 4)
  end

  def test_that_http_www_root_is_rejected
    # Fixture
    html = "#{FIXTURES_DIR}/http-www-bitcraze-io.html"

    # Test
    proofer = run_proofer(html)

    # Assert
    assert_equal(proofer.failed_checks.length, 1)
    assert_equal(proofer.failed_checks[0].description, "Link to www.bitcraze.io is not allowed. Use relative links instead")
    assert_equal(proofer.failed_checks[0].path, "tools/validate/test/fixtures/http-www-bitcraze-io.html")
    assert_equal(proofer.failed_checks[0].line, 4)
  end

  def test_that_https_www_root_is_rejected
    # Fixture
    html = "#{FIXTURES_DIR}/https-www-bitcraze-io.html"

    # Test
    proofer = run_proofer(html)

    # Assert
    assert_equal(proofer.failed_checks.length, 1)
    assert_equal(proofer.failed_checks[0].description, "Link to www.bitcraze.io is not allowed. Use relative links instead")
    assert_equal(proofer.failed_checks[0].path, "tools/validate/test/fixtures/https-www-bitcraze-io.html")
    assert_equal(proofer.failed_checks[0].line, 4)
  end

  def test_that_bitcraze_se_is_rejected
    # Fixture
    html = "#{FIXTURES_DIR}/www-bitcraze-se.html"

    # Test
    proofer = run_proofer(html)

    # Assert
    assert_equal(proofer.failed_checks.length, 1)
    assert_equal(proofer.failed_checks[0].description, "Link to bitcraze.se is not allowed. Use bitcraze.io")
    assert_equal(proofer.failed_checks[0].path, "tools/validate/test/fixtures/www-bitcraze-se.html")
    assert_equal(proofer.failed_checks[0].line, 4)
  end
end
