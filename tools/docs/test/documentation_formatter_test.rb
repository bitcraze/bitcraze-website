require 'yaml'
require 'tools/docs/src/documentation_formatter'

class TestDocumentationFormatter < Minitest::Test
  def setup
    @page_id = 'the-id'
    @repo_name = 'the-repo'
    @tag = 'the-tag'
    @ns = 'the-namespace'
    @repo_root_url = '/the/root/url/'

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
    actual_doc = @cut.update_doc(doc, @ns, @repo_name, @tag, true, @repo_root_url, false)

    # Assert
    actual = YAML.load(actual_doc)

    assert_equal(expected, actual['page_id'])
  end

  def test_that_redirects_in_front_matter_are_updated
    # Fixture
    front_matter = @fm_default.merge({'redirects' => ['/a/page/', '/other/page/']})
    doc = generate_doc(front_matter, '')

    expected = ['/documentation/repository/' + @repo_name + '/' + @tag + '/a/page/', '/documentation/repository/' + @repo_name + '/' + @tag + '/other/page/']

    # Test
    actual_doc = @cut.update_doc(doc, @ns, @repo_name, @tag, true, @repo_root_url, false)

    # Assert
    actual = YAML.load(actual_doc)

    assert_equal(expected, actual['redirects'])
  end

  def test_that_redirects_using_internal_links_in_front_matter_are_updated
    # Fixture
    front_matter = @fm_default.merge({'redirects' => ['/docs/a/page/']})
    doc = generate_doc(front_matter, '')

    expected = ['/documentation/repository/' + @repo_name + '/' + @tag + '/a/page/']

    # Test
    actual_doc = @cut.update_doc(doc, @ns, @repo_name, @tag, true, @repo_root_url, false)

    # Assert
    actual = YAML.load(actual_doc)

    assert_equal(expected, actual['redirects'])
  end

  def test_that_attributes_are_added_to_front_matter
    # Fixture
    doc = generate_doc(@fm_default, '')

    # Test
    actual_doc = @cut.update_doc(doc, @ns, @repo_name, @tag, true, @repo_root_url, false)

    # Assert
    actual = YAML.load(actual_doc)

    assert_equal('page-repo-docs', actual['layout'])
    assert_equal(@repo_name, actual['repo_name'])
    assert_equal(@tag, actual['repo_tag'])
    assert_equal(@ns, actual['ns'])
    assert_equal(@repo_root_url, actual['repo_root_url'])
  end

  def test_that_no_search_index_is_added_to_front_matter
    # Fixture
    doc = generate_doc(@fm_default, '')

    # Test
    actual_doc = @cut.update_doc(doc, @ns, @repo_name, @tag, true, @repo_root_url, true)

    # Assert
    actual = YAML.load(actual_doc)

    assert_equal(true, actual['no_search_index'])
  end

  def test_that_internal_absolute_old_urls_are_extended
    # Fixture
    doc = generate_doc(@fm_default, '[bla bla](/internal/link)')
    expected = '[bla bla](/documentation/repository/' + @repo_name + '/' + @tag + '/internal/link)'

    # Test
    actual = @cut.update_doc(doc, @ns, @repo_name, @tag, true, @repo_root_url, false)

    # Assert
    assert(actual.include? expected)
  end

  def test_that_internal_absolute_urls_are_extended
    # Fixture
    doc = generate_doc(@fm_default, '[bla bla](/docs/internal/link)')
    expected = '[bla bla](/documentation/repository/' + @repo_name + '/' + @tag + '/internal/link)'

    # Test
    actual = @cut.update_doc(doc, @ns, @repo_name, @tag, true, @repo_root_url, false)

    # Assert
    assert(actual.include? expected)
  end

  def test_that_internal_absolute_md_files_are_extended
    # Fixture
    doc = generate_doc(@fm_default, '[bla bla](/docs/internal/link.md)')
    expected = '[bla bla](/documentation/repository/' + @repo_name + '/' + @tag + '/internal/link.md)'

    # Test
    actual = @cut.update_doc(doc, @ns, @repo_name, @tag, true, @repo_root_url, false)

    # Assert
    assert(actual.include? expected)
  end

  def test_that_internal_relative_urls_are_untouched
    # Fixture
    doc = generate_doc(@fm_default, '[bla bla](relative/link)')
    expected = '[bla bla](relative/link)'

    # Test
    actual = @cut.update_doc(doc, @ns, @repo_name, @tag, true, @repo_root_url, false)

    # Assert
    assert(actual.include? expected)
  end

  def test_that_internal_relative_md_files_are_not_changed
    # Fixture
    doc = generate_doc(@fm_default, '[bla bla](relative.md)')
    expected = '[bla bla](relative.md)'

    # Test
    actual = @cut.update_doc(doc, @ns, @repo_name, @tag, true, @repo_root_url, false)

    # Assert
    assert(actual.include? expected)
  end

  def test_that_urls_to_the_bitcraze_web_are_truncated
    # Fixture
    doc = generate_doc(@fm_default, '[bla bla](https://www.bitcraze.io/some/page/)')
    expected = '[bla bla](/some/page/)'

    # Test
    actual = @cut.update_doc(doc, @ns, @repo_name, @tag, true, @repo_root_url, false)

    # Assert
    assert(actual.include? expected)
  end

  def test_that_urls_to_the_bitcraze_web_are_truncated_for_files_without_front_matter
    # Fixture
    doc = '[bla bla](https://www.bitcraze.io/some/page/)'
    expected = '[bla bla](/some/page/)'

    # Test
    actual = @cut.update_doc(doc, @ns, @repo_name, @tag, false, @repo_root_url, false)

    # Assert
    assert(actual.include? expected)
  end

  def test_that_id_urls_are_not_modified
    # Fixture
    url = '[bla bla](#the-id)'
    doc = generate_doc(@fm_default, url)
    expected = url

    # Test
    actual = @cut.update_doc(doc, @ns, @repo_name, @tag, true, @repo_root_url, false)

    # Assert
    assert(actual.include? expected)
  end

  def test_that_external_urls_are_not_modified
    # Fixture
    url = '[bla bla](http://some.external.url/path)'
    doc = generate_doc(@fm_default, url)
    expected = url

    # Test
    actual = @cut.update_doc(doc, @ns, @repo_name, @tag, true, @repo_root_url, false)

    # Assert
    assert(actual.include? expected)
  end

  def test_that_urls_to_github_files_in_master_of_the_current_repo_are_changed_to_the_tag
    # Fixture
    doc = generate_doc(@fm_default, '[bla bla](https://github.com/bitcraze/the-repo/blob/master/src/modules/interface/stabilizer_types.h)')
    expected = '[bla bla](https://github.com/bitcraze/the-repo/blob/the-tag/src/modules/interface/stabilizer_types.h)'

    # Test
    actual = @cut.update_doc(doc, @ns, @repo_name, @tag, true, @repo_root_url, false)

    # Assert
    assert(actual.include? expected)
  end

  def test_that_urls_to_github_files_in_main_of_the_current_repo_are_changed_to_the_tag
    # Fixture
    doc = generate_doc(@fm_default, '[bla bla](https://github.com/bitcraze/the-repo/blob/main/src/modules/interface/stabilizer_types.h)')
    expected = '[bla bla](https://github.com/bitcraze/the-repo/blob/the-tag/src/modules/interface/stabilizer_types.h)'

    # Test
    actual = @cut.update_doc(doc, @ns, @repo_name, @tag, true, @repo_root_url, false)

    # Assert
    assert(actual.include? expected)
  end

  def test_that_urls_to_github_files_in_master_of_another_repo_are_not_changed_to_the_tag
    # Fixture
    doc = generate_doc(@fm_default, '[bla bla](https://github.com/bitcraze/other-repo/blob/master/src/modules/interface/stabilizer_types.h)')
    expected = '[bla bla](https://github.com/bitcraze/other-repo/blob/master/src/modules/interface/stabilizer_types.h)'

    # Test
    actual = @cut.update_doc(doc, @ns, @repo_name, @tag, true, @repo_root_url, false)

    # Assert
    assert(actual.include? expected)
  end

  def test_that_urls_to_github_files_in_main_of_another_repo_are_not_changed_to_the_tag
    # Fixture
    doc = generate_doc(@fm_default, '[bla bla](https://github.com/bitcraze/other-repo/blob/main/src/modules/interface/stabilizer_types.h)')
    expected = '[bla bla](https://github.com/bitcraze/other-repo/blob/main/src/modules/interface/stabilizer_types.h)'

    # Test
    actual = @cut.update_doc(doc, @ns, @repo_name, @tag, true, @repo_root_url, false)

    # Assert
    assert(actual.include? expected)
  end

  def test_that_urls_to_github_files_in_another_tag_of_the_current_repo_are_not_changed_to_the_tag
    # Fixture
    doc = generate_doc(@fm_default, '[bla bla](https://github.com/bitcraze/the-repo/blob/other-tag/src/modules/interface/stabilizer_types.h)')
    expected = '[bla bla](https://github.com/bitcraze/the-repo/blob/other-tag/src/modules/interface/stabilizer_types.h)'

    # Test
    actual = @cut.update_doc(doc, @ns, @repo_name, @tag, true, @repo_root_url, false)

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
