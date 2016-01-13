module Jekyll
  class ProductHighlight < Liquid::Tag

    # Use this tag on product pages to generated the highlight headers with an icon
    #
    # ; is used as separator
    #
    # Takes 3 arguments
    # - font awesome icon name
    # - Title
    # - Catch phrase
    #
    # Example
    # {% product_highlight fa-some-icon; My title; My catch phrase %}

    def initialize(tag_name, text, tokens)
      super
      @parts = text.split(';')
    end

    def render(context)
        '<h2><i class="fa %1$s fa-fw"></i>%2$s</h2><div class="pp-catch-phrase">%3$s</div>' % @parts
    end
  end
end

Liquid::Template.register_tag('product_highlight', Jekyll::ProductHighlight)