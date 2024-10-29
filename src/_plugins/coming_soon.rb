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
            <div class="col-md-12">
                <button type="button" class="buy-button" disabled><i class="fa-solid fa-cart-shopping fa-fw"></i>Coming soon</button>
                <h4>Soon available in stores,
                  <a title="Signup for newsletter" href="/signup/">sign up for our newsletter.</a>
                </h4>
            </div>
        </div>'
    end
  end
end

Liquid::Template.register_tag('coming_soon', Jekyll::ComingSoon)
