config.gem 'prawn', :lib => 'prawn', :version => '>=0.6.2'
config.gem 'prawn-layout', :lib => 'prawn/layout', :version => '>=0.3.1'
config.gem 'prawn-format', :lib => 'prawn/format', :version => '>=0.2.2'

Mime::Type.register "application/pdf", :pdf
ActionView::Template.register_template_handler 'prawn', ActionView::TemplateHandlers::Prawn
