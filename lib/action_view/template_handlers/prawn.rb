module ActionView
  module TemplateHandlers
    class Prawn < TemplateHandler
      include Compilable

      def compile(template)
        %Q{
          controller.response.content_type ||= Mime::PDF
          source = ::Prawn::Document.new do |pdf|
            #{template.source}
          end
          source.render
        }
      end
    end
  end
end
