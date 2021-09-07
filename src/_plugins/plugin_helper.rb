module Jekyll
  module PluginHelper
      # Convert markdown to html. Use in blocks that need to process the content of the block
      def markdownify(md, context)
        site = context.registers[:site]
        converter = site.find_converter_instance(Jekyll::Converters::Markdown)
        converter.convert(md)
      end

      # Convert markdown and liquid. Use when adding content with liquid that was not part of the original source file.
      # Nore: in unit tests it seems as this method returns the input string which makes it possible (dirty!) to verify
      # what we send to it
      def liquidify(md, context)
        Liquid::Template.parse(md).render(context)
      end

      def parse_args(str)
        parts = str.split(';')
        parts.map {|part| part.strip}
      end

      def page_plugin_data(context, plugin_name)
        if !context['page'].has_key?('bc_page_plugin_data')
          context['page']['bc_page_plugin_data'] = {}
        end

        if !context['page']['bc_page_plugin_data'].has_key?(plugin_name)
          context['page']['bc_page_plugin_data'][plugin_name] = {}
        end

        context['page']['bc_page_plugin_data'][plugin_name]
      end

      def generate_id(title)
        title.downcase.gsub(/[^a-z0-9 ]/, ' ').gsub(/\s+/,'-')
      end
  end
end
