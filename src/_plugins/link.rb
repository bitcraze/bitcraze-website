require_relative 'plugin_helper'

module Jekyll
    module Links
        class Id_url < Liquid::Tag
            include Jekyll::PluginHelper

            # Use this tag to generate a url based on a page id
            #
            #
            # Takes 1 argument
            # - page id
            # - url tag (optional)
            #
            # Example
            # [this is a link to the page with id my_page_id]({% id_url my_page_id %})
            # [this is a link to the page with id my_page_id at tag; abc]({% id_url my_page_id abc %})

            def initialize(tag_name, text, tokens)
                super
                params = parse_args(text)

                @page_id = params[0]

                @id = nil
                if params.length > 1
                    @id = params[1]
                end
            end

            def render(context)
                site = context.registers[:site]
                pages = site.pages.select {|p| p.data["page_id"] == @page_id}
                raise "No page with id " + @page_id + " found!" if pages.size != 1

                page = pages[0]

                if @id == nil
                    page.url
                else
                    page.url + '#' + @id
                end
            end
        end

        class Id_link < Liquid::Tag
            include Jekyll::PluginHelper

            # Use this tag to generate a link based on a page id. The title of the
            # page is used as caption for the link.
            #
            #
            #
            # Takes 1 or 2 arguments
            # - page id
            # - url tag (optional)
            #
            # Example
            # {% id_link my_page_id %}
            # {% id_link my_page_id; my-tag %}

            def initialize(tag_name, text, tokens)
                super
                params = parse_args(text)

                @page_id = params[0]

                @id = nil
                if params.length > 1
                    @id = params[1]
                end
            end

            def render(context)
                site = context.registers[:site]
                pages = site.pages.select {|p| p.data["page_id"] == @page_id}
                raise "No page with id " + @page_id + " found!" if pages.size != 1

                page = pages[0]

                url = page.url
                if @id
                    url =  url + '#' + @id
                end

                '<a href="%1$s">%2$s</a>' % [url, page.data['title']]
            end
        end
    end
end

Liquid::Template.register_tag('id_url', Jekyll::Links::Id_url)
Liquid::Template.register_tag('id_link', Jekyll::Links::Id_link)
