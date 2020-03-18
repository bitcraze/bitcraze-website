require 'yaml'
require 'pathname'


class DocumentationFormatter
  def initialize
    @docs_root = '/documentation/repository'
  end

  def update_docs_content(docs_dir, ns, repo_name, tag)
    Dir.glob(File.join(docs_dir, '*.md')).each do | file|
      doc = IO.read(file)
      result = update_doc(doc, ns, repo_name, tag)
      IO.write(file, result)
    end
  end

  def update_doc(doc, ns, repo_name, tag)
      doc_fm = update_front_matter_data(doc, ns, repo_name, tag)
      update_urls(doc_fm, repo_name, tag)
  end

  def generate_page_id(ns, short_id)
    ns + '-' + short_id
  end

  def update_front_matter_data(doc, ns, repo_name, tag)
    data = YAML.load(doc)

    data['page_id'] = generate_page_id(ns, data['page_id'])
    data['layout'] = 'page-docs'
    data['repo_name'] = repo_name
    data['repo_tag'] = tag
    data['ns'] = ns

    start_of_front_matter = doc.index('---')
    end_of_front_matter = doc.index('---', start_of_front_matter + 3)
    data.to_yaml + doc[end_of_front_matter..-1]
  end

  def update_urls(doc, repo_name, tag)
    # The URLs in the repo docs are designed to work with the local jekyll server,
    # massage them to fit the public web structure.
    # Links have the following format:
    # [Some text](/the/url/)
    #
    # Doc url ==> modified url
    # ------------------------
    # #page-ref ==> #page-ref
    # /my-url/ ==> /documentation/repository/repo-name/tag/my-url/
    # https://www.bitcraze.io/fancy_page/ ==> /fancy_page/
    # https://other.domain/fancy_page/ ==> https://other.domain/fancy_page/

    repo_path = @docs_root + '/' + repo_name + '/' + tag
    doc.gsub(/(\[[^\[]*\])\(\s*(\/[^\)]*)\)/, '\1(' + repo_path + '\2)').gsub(/(\[[^\[]*\])\(\s*https:\/\/www.bitcraze.io(\/[^\)]*\))/, '\1(\2')
  end

  def add_name_space_to_node_list(nodes, ns)
    nodes.each do |node|
      if node.key? 'page_id'
        node['page_id'] = generate_page_id(ns, node['page_id'])
      end

      if node.key? 'subs'
        add_name_space_to_node_list(node['subs'], ns)
      end
    end
  end

  def get_shared_menus(shared_docs_menus_file)
    if File.file? shared_docs_menus_file
      shared_menus = YAML.load_file(shared_docs_menus_file)
    else
      shared_menus = {}
    end

    return shared_menus
  end

  def add_to_docs_menus(docs_menu_file, shared_docs_menus_file, ns)
    repo_menus = YAML.load_file(docs_menu_file)
    add_name_space_to_node_list(repo_menus, ns)

    shared_menus = get_shared_menus(shared_docs_menus_file)
    shared_menus[ns] = repo_menus

    IO.write(shared_docs_menus_file, shared_menus.to_yaml)
  end

  def add_to_docs_tag_list(tag_list, repo, tag)
    if !tag_list.key?(repo)
      tag_list[repo] = []
    end

    tags = tag_list[repo]

    if !tags.include?(tag)
      tags << tag
      true
    else
      false
    end
  end

  def add_to_docs_tag_list_file(docs_tag_list_file, repo, tag)
    if File.file? docs_tag_list_file
      tag_list = YAML.load_file(docs_tag_list_file)
    else
      tag_list = {}
    end

    is_modified = add_to_docs_tag_list(tag_list, repo, tag)

    if is_modified
      IO.write(docs_tag_list_file, tag_list.to_yaml)
    end
  end
end
