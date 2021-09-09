module Jekyll
  module PluginHelper
      # Convert markdown to html. Use in blocks that need to process the content of the block
      def markdownify(md, context)
        site = context.registers[:site]
        converter = site.find_converter_instance(Jekyll::Converters::Markdown)
        converter.convert(md)
      end

      # Process liquid tags. Use when adding content with liquid that was not part of the original source file.
      def liquidify(md, context)
        Liquid::Template.parse(md).render(context)
      end

      # Split an argument string at ;
      def parse_args(str)
        parts = str.split(';')
        parts.map {|part| part.strip}
      end

      # Storage for page wide data
      def page_plugin_data(context, plugin_name)
        if !context['page'].has_key?('bc_page_plugin_data')
          context['page']['bc_page_plugin_data'] = {}
        end

        if !context['page']['bc_page_plugin_data'].has_key?(plugin_name)
          context['page']['bc_page_plugin_data'][plugin_name] = {}
        end

        context['page']['bc_page_plugin_data'][plugin_name]
      end

      # Genereate id based on a title
      def generate_id(title)
        title.downcase.gsub(/[^a-z0-9 ]/, ' ').gsub(/\s+/,'-')
      end

      # Load a source file (md) for a product from the hardware directory
      def load_hardware_source_md(context, product_name)
        site = context.registers[:site]
        config = site.config
        src_dir = config["source"]

        path = File.join(src_dir, 'documentation', 'hardware', product_name, 'index.md')
        File.read(path)
      end
  end
end
