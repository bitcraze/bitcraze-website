# Based on http://www.marran.com/tech/creating-redirects-with-jekyll

module Jekyll

  # The redirect page creates a simple page that refreshes a user from a URL alias to an existing page.
  #
  # Use by adding something like this the top section of a page:
  #
  # redirects:
  #  - /the/old/url/
  #  - /other/url/

  class Redirects < Jekyll::Generator
    safe true
    priority :low

    # find all posts with a redirect property and create a new page for each entry
    def generate(site)
      site.pages.select{|x| x.data.key? 'redirects' }.each do |p|
        p.data['redirects'].each do |r|
          redirect = RedirectPage.new(site, site.source, r, p.url)
          redirect.render(site.layouts, site.site_payload)
          redirect.write(site.dest)
          site.pages << redirect
        end
      end
    end
  end

  # a class for generating the redirect pages.
  class RedirectPage < Page
    def initialize(site, base, path, destination)
      @site = site
      @base = base
      @dir  = path
      @name = 'index.html'
      self.process(@name)

      # Read the YAML data from the layout page.
      self.read_yaml(File.join(base, '_layouts'), 'redirect.html')
      self.data['source_url'] = destination
    end
  end
end
