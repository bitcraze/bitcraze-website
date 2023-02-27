require 'html-proofer'
require_relative 'helper'

require 'tools/validate/src/repo_docs_check'



class TestRepoDocsCheck < Minitest::Test

  def test_html_without_h1_passes
    # Fixture
    html = "#{FIXTURES_DIR}/ok-repo-docs.html"

    # Test
    proofer = run_proofer(html)

    # Assert
    assert_equal(proofer.failed_checks.length, 0)
  end

  def test_html_with_h1_fails
    # Fixture
    html = "#{FIXTURES_DIR}/repo-docs-with-h1.html"

    # Test
    proofer = run_proofer(html)

    # Assert
    assert_equal(proofer.failed_checks.length, 1)
    assert_equal(proofer.failed_checks[0].description, "H1 tags not allowed in repo docs")
  end

end
