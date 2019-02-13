module Jekyll
  module PluginHelper
      def markdownify(md, context)
        site = context.registers[:site]
        converter = site.find_converter_instance(Jekyll::Converters::Markdown)
        converter.convert(md)
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