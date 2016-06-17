module Jekyll
  class ComingSoon < Liquid::Tag

    # Use this tag on product pages to generated the coming soon button
    #
    # Takes no arguments
    #
    # Example
    # {% coming_soon %}

    def initialize(tag_name, text, tokens)
      super
    end

    def render(context)
        '<div class="row">
            <div class="col-md-12 text-center">
                <h4>Soon available in stores, sign up for our newsletter.</h4>
            </div>
        </div>'
    end
  end
end

Liquid::Template.register_tag('coming_soon', Jekyll::ComingSoon)
