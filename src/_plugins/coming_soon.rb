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
                <button type="button" class="buy-button" disabled><i class="fa fa-shopping-cart fa-fw"></i>Coming soon</button>
                <h4>Soon available in stores,
                  <a title="Signup for newsletter" href="http://eepurl.com/b2v_fj">sign up for our newsletter.</a>
                </h4>
            </div>
        </div>'
    end
  end
end

Liquid::Template.register_tag('coming_soon', Jekyll::ComingSoon)
