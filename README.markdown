Prawn
=====

A minimal Rails 2.3+ plugin to render `.pdf.prawn` views in Rails using the
Prawn PDF generation library.

Usage
=======

Simply create views ending in `.pdf.prawn` and use the `pdf` variable like so:

    pdf.text "<b>Some bold text</b>"
    pdf.table [ [1, 2, 3] ]

Copyright (c) 2009 Paul Mucur, released under the MIT license
