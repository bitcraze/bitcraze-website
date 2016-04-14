class UrlCheck < ::HTMLProofer::Check

  def href?
    @link.href
  end

  def www?
    is_www = @link.href.include? 'www.bitcraze.io'
    is_blog_post = @link.href.match /www.bitcraze.io\/[0-9]*\//

    is_www and not is_blog_post
  end

  def se?
    is_se = @link.href.include? 'bitcraze.se'
    is_files = @link.href.include? 'files.bitcraze.se'

    is_se and not is_files
  end

  def run
    @html.css('a').each do |node|
      @link = create_element(node)
      line = node.line

      if href?
        if www?
          return add_issue("Link to www.bitcraze.io is not allowed. Use relative links instead", line: line)
        end
        if se?
          return add_issue("Link to bitcraze.se is not allowed. Use bitcraze.io", line: line)
        end
      end
    end
  end
end