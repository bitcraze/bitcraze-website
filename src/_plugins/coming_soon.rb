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
        '<a href="#"><button type="button" class="buy-button" disabled><i class="fa fa-gift fa-fw"></i>Coming soon</button></a>'
    end
  end
end

Liquid::Template.register_tag('coming_soon', Jekyll::ComingSoon)
