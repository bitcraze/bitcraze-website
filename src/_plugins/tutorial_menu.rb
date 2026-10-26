require 'nokogiri'

module Jekyll
  # Builds the navigation tree for the getting started tutorials.
  #
  # Unlike bc_left_menu this tags every entry with the level it came from, so
  # the styling and the scroll tracking never have to work out the level from
  # how deeply nested the markup happens to be:
  #
  #   si_part  -> h1 -> tm-part     (always visible)
  #   si_intro -> h2 -> tm-section
  #   si_step  -> h3 -> tm-step
  #
  # Anything below the top level is collapsed until the reader scrolls into it,
  # which is what keeps a 40 heading tutorial navigable.
  module TutorialMenu
    LEVEL_CLASSES = { 1 => 'tm-part', 2 => 'tm-section', 3 => 'tm-step' }.freeze

    def bc_tutorial_menu(content)
      headings = Nokogiri::HTML(content).css('h1, h2, h3').select { |heading| heading['id'] }
      return '' if headings.empty?

      # Build a tree by keeping a stack of the open ancestors. A heading is a
      # child of the closest heading above it with a smaller level, so pages
      # that skip a level (a si_step directly under a si_part) still nest.
      root = { level: 0, children: [] }
      stack = [root]

      headings.each do |heading|
        node = {
          level: heading.name[1].to_i,
          id: heading['id'],
          title: heading.inner_html.strip,
          children: []
        }

        stack.pop while stack.last[:level] >= node[:level]
        stack.last[:children] << node
        stack.push(node)
      end

      render_list(root[:children], 'tutorial-menu')
    end

    private

    def render_list(nodes, css_class)
      return '' if nodes.empty?

      items = nodes.map do |node|
        classes = ['tm-item', LEVEL_CLASSES.fetch(node[:level], 'tm-step')]
        classes << 'tm-has-children' unless node[:children].empty?

        '<li class="%s" data-target="%s"><a href="#%s">%s</a>%s</li>' % [
          classes.join(' '),
          node[:id],
          node[:id],
          node[:title],
          render_list(node[:children], 'tm-children')
        ]
      end

      '<ul class="%s">%s</ul>' % [css_class, items.join]
    end

  end
end

Liquid::Template.register_filter(Jekyll::TutorialMenu)
