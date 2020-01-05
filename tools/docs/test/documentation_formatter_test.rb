require 'yaml'
require 'tools/docs/src/documentation_formatter'

class TestDocumentationFormatter < Minitest::Test
  def setup
    @page_id = 'the-id'
    @repo_name = 'the-repo'
    @tag = 'master'
    @ns = 'the-namespace'
    @file_name = 'some/file.md'

    @fm_default = {
      'page_id' => @page_id,
    }

    @cut = DocumentationFormatter.new()
  end

  def test_that_front_matter_is_updated_by_adding_namespace
    # Fixture
    doc = generate_doc(@fm_default, '')
    expected = @ns + '-' + @page_id

    # Test
    actual_doc = @cut.update_doc(doc, @ns, @repo_name, @tag, @file_name)

    # Assert
    actual = YAML.load(actual_doc)

    assert_equal(expected, actual['page_id'])
  end

  def test_that_attributes_are_added_to_front_matter
    # Fixture
    doc = generate_doc(@fm_default, '')

    # Test
    actual_doc = @cut.update_doc(doc, @ns, @repo_name, @tag, @file_name)

    # Assert
    actual = YAML.load(actual_doc)

    assert_equal('page-docs', actual['layout'])
    assert_equal(@repo_name, actual['repo_name'])
    assert_equal(@tag, actual['repo_tag'])
    assert_equal(@ns, actual['ns'])
  end

  def test_that_permalink_is_added_to_front_matter
    # Fixture
    doc = generate_doc(@fm_default, '')
    expected = '/docs/' + @repo_name + '/' + @tag + '/some/file/'

    # Test
    actual_doc = @cut.update_doc(doc, @ns, @repo_name, @tag, @file_name)

    # Assert
    actual = YAML.load(actual_doc)

    assert_equal(expected, actual['permalink'])
  end

  def test_that_internal_urls_are_extended
    # Fixture
    doc = generate_doc(@fm_default, '[bla bla](/internal/link)')
    expected = '[bla bla](/docs/' + @repo_name + '/' + @tag + '/internal/link)'

    # Test
    actual = @cut.update_doc(doc, @ns, @repo_name, @tag, @file_name)

    # Assert
    assert(actual.include? expected)
  end

  def test_that_urls_to_the_bitcraze_web_are_truncated
    # Fixture
    doc = generate_doc(@fm_default, '[bla bla](https://www.bitcraze.io/some/page/)')
    expected = '[bla bla](/some/page/)'

    # Test
    actual = @cut.update_doc(doc, @ns, @repo_name, @tag, @file_name)

    # Assert
    assert(actual.include? expected)
  end

  def test_that_id_urls_are_not_modified
    # Fixture
    url = '[bla bla](#the-id)'
    doc = generate_doc(@fm_default, url)
    expected = url

    # Test
    actual = @cut.update_doc(doc, @ns, @repo_name, @tag, @file_name)

    # Assert
    assert(actual.include? expected)
  end

  def test_that_external_urls_are_not_modified
    # Fixture
    url = '[bla bla](http://some.external.url/path)'
    doc = generate_doc(@fm_default, url)
    expected = url

    # Test
    actual = @cut.update_doc(doc, @ns, @repo_name, @tag, @file_name)

    # Assert
    assert(actual.include? expected)
  end

  def test_that_tag_is_added_to_tag_list
    # Fixture
    tag_list = {@repo_name => ['other-tag']}
    expected = ['other-tag', @tag]

    # Test
    actual = @cut.add_to_docs_tag_list(tag_list, @repo_name, @tag)

    # Assert
    assert(actual)
    assert_equal(expected, tag_list[@repo_name])
  end

  def test_that_tag_is_added_to_tag_list_first_time
    # Fixture
    tag_list = {}
    expected = [@tag]

    # Test
    actual = @cut.add_to_docs_tag_list(tag_list, @repo_name, @tag)

    # Assert
    assert(actual)
    assert_equal(expected, tag_list[@repo_name])
  end

  def test_that_tag_is_reported_as_not_added_to_tag_list_when_already_part_of_list
    # Fixture
    expected = ['one-tag', @tag, 'other-tag']
    tag_list = {@repo_name => expected}

    # Test
    actual = @cut.add_to_docs_tag_list(tag_list, @repo_name, @tag)

    # Assert
    assert_equal(false, actual)
    assert_equal(expected, tag_list[@repo_name])
  end


  private

  def generate_doc(front_matter, content)
    return front_matter.to_yaml + "\n---\n" + content
  end
end
