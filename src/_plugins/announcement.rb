require_relative 'plugin_helper'

module Jekyll
  # Use this tag for annoucements on the front page
  #
  # ; is used as separator
  #
  # Takes 2 arguments
  # - Title
  # - Image src
  #
  # Examples:
  # {% announcement My title; image path %}
  # Some content (supports markdown)
  # {% endannouncement %}

  class Announcement < Liquid::Block
    include Jekyll::PluginHelper

    def initialize(tag_name, text, tokens)
      super
      @params = parse_args(text)
    end

    def render(context)
      markup = markdownify(super, context)

      title = @params[0]
      img_src = @params[1]

      '<div class="container-fluid sidebar-container"><div class="row content-area sidebar-row"><div class="col-sm-3 sidebar-col"><img src="' +
      img_src +
      '" class="img-responsive" alt="' +
      title +
      '"></div><div class="col-sm-9 sidebar-col"><h3>' +
      title +
      '</h3>' +
      markup +
      '</div></div></div>'
    end

    # Allow for empty body. Liquid will not output the rendered result otherwise
    def blank?
      false
    end
  end
end

Liquid::Template.register_tag('announcement', Jekyll::Announcement)
