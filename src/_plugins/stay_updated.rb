require_relative 'plugin_helper'

module Jekyll
    class StayUpdated < Liquid::Tag
    include Jekyll::PluginHelper

    # Use this tag on product pages to generated the stay updated button
    #
    # Takes 1 arguments
        # - url to newsletter
    #
    # Example
    # {% buy_online https://shop.com/product %}

    def initialize(tag_name, text, tokens)
      super
      @params = parse_args(text)
    end

    def render(context)
        '<div class="row">
            <div class="col-md-12">
                <div class="text-center">
                    <a href="' + @params[0] + '"><button type="button" class="buy-button"><i class="fa-regular fa-envelope fa-fw"></i>Keep me updated!</button></a>
                </div>
            </div>
        </div>'
    end
  end
end

Liquid::Template.register_tag('stay_updated', Jekyll::StayUpdated)
