module ActionView
  module TemplateHandlers
    class Prawn < TemplateHandler
      include Compilable

      def compile(template)
        %Q{
          controller.response.content_type ||= Mime::PDF
          controller.headers['Expires'] = '0'
          controller.headers['Pragma'] = 'cache'
          controller.headers['Cache-Control'] = 'private'
          controller.headers['Accept-Ranges'] = 'bytes'
          source = ::Prawn::Document.new do |pdf|
            #{template.source}
          end
          result = source.render
          controller.headers['Content-Length'] = result.bytesize.to_s
          result
        }
      end
    end
  end
end
