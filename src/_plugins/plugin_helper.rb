module Jekyll
  module PluginHelper
      def markdownify(md, context)
        site = context.registers[:site]
        converter = site.find_converter_instance(Jekyll::Converters::Markdown)
        converter.convert(md)
      end

      def split_strip(str, token)
        parts = str.split(token)
        parts.map {|part| part.strip}
      end
  end
end