class RepoDocsCheck < ::HTMLProofer::Check
  def run
    @html.css('.repo-docs-content h1').each do |node|
      h1 = create_element(node)
      return add_failure("H1 tags not allowed in repo docs", line: h1.line)
    end
  end
end
