require_relative 'plugin_helper'

module Jekyll
    module RepoDocLinks
        class Repo_doc_url < Liquid::Tag
            include Jekyll::PluginHelper

            # Use this tag to generate a url into a repo's documentation that always
            # points at the latest release, without hard-coding the release tag.
            #
            # The tag list for a repo (site.data.docs_tag_list, populated by
            # tools/docs/src/documentation_formatter.rb from the call order in
            # tools/build/download_docs) always has the dev branch (master/main)
            # first, followed by releases newest-first. So the second entry is the
            # latest release; if a repo has no release synced yet, the dev branch
            # is used instead.
            #
            # Takes 1 or 2 arguments
            # - repo name (as used in docs_tag_list.yml / download_docs)
            # - subpath within the repo docs (optional)
            #
            # Example
            # [Crazyradio 2.0 documentation]({% repo_doc_url crazyradio2-firmware %})
            # [Building the firmware]({% repo_doc_url crazyradio2-firmware; building-and-flashing/build %})

            def initialize(tag_name, text, tokens)
                super
                params = parse_args(text)

                @repo_name = params[0]

                @subpath = nil
                if params.length > 1
                    @subpath = params[1]
                end
            end

            def render(context)
                site = context.registers[:site]
                tag_list = site.data['docs_tag_list'][@repo_name]
                raise "No docs_tag_list entry for repo " + @repo_name if tag_list.nil? || tag_list.empty?

                tag = tag_list.length > 1 ? tag_list[1] : tag_list[0]

                url = '/documentation/repository/' + @repo_name + '/' + tag + '/'
                if @subpath
                    url = url + @subpath + '/'
                end

                url
            end
        end
    end
end

Liquid::Template.register_tag('repo_doc_url', Jekyll::RepoDocLinks::Repo_doc_url)
