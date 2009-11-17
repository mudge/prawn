Prawn
=====

A minimal Rails 2.3+ plugin to render `.pdf.prawn` views in Rails using the
Prawn PDF generation library.

Usage
=======

Simply create views ending in `.pdf.prawn` and use the `pdf` variable like so:

    pdf.text "<b>Some bold text</b>"
    pdf.table [ [1, 2, 3] ]
    
Then in your controller you can use the standard `respond_to` semantics:

    def show
      @article = Article.find(params[:id])
      respond_to do |format|
        format.html # app/views/articles/show.html.erb
        format.pdf  # app/views/articles/show.pdf.prawn
      end
    end

Copyright (c) 2009 Paul Mucur, released under the MIT license
