require_relative 'plugin_helper'

module Jekyll
  class Hackster < Liquid::Tag
    include Jekyll::PluginHelper

    # Use this tag on embed an hackster project image in the page
    #
    # Takes 1 arguments
    # - user/project name
    #
    # Example
    # The project URL is https://www.hackster.io/ataffanel/crazyfblimp-6a081b?maybeLotsOfThings...
    # The tag to use will be: {% hacktster ataffanel/crazyfblimp-6a081b %}

    def initialize(tag_name, text, tokens)
      super
      @params = parse_args(text)
    end

    def render(context)
        "<iframe frameborder='0' height='270' scrolling='no' src='https://www.hackster.io/" + @params[0] + "/embed?use_route=project' width='360'></iframe>"
    end
  end
end

Liquid::Template.register_tag('hackster', Jekyll::Hackster)
