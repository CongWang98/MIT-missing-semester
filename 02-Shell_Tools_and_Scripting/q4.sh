find . -name '*.html' -print0 | xargs -0 tar -cf zipped_html.tar.gz
