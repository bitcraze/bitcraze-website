require_relative 'plugin_helper'

module Jekyll
  class NoticeInfo < Liquid::Tag
    include Jekyll::PluginHelper

    # Use this tag to display an info block
    #
    # Takes 1 arguments
    # The text
    #
    # Example
    # {% notice_info My message %}

    def initialize(tag_name, text, tokens)
      super
        @params = parse_args(text)
    end

    def render(context)
        '<div class="alert alert-success"><i class="fa-solid fa-info fa-fw"></i>%1$s</div>' % @params
    end
  end

  class NoticeImportant < Liquid::Tag
    include Jekyll::PluginHelper

    # Use this tag to display an info block
    #
    # Takes 1 arguments
    # The text
    #
    # Example
    # {% notice_info My message %}

    def initialize(tag_name, text, tokens)
      super
        @params = parse_args(text)
    end

    def render(context)
        '<div class="alert alert-danger"><i class="fa-solid fa-triangle-exclamation fa-fw"></i>%1$s</div>' % @params
    end
  end
end

Liquid::Template.register_tag('notice_info', Jekyll::NoticeInfo)
Liquid::Template.register_tag('notice_important', Jekyll::NoticeImportant)