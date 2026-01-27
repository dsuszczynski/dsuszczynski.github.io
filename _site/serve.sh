#!/bin/bash
docker run --rm -it \
  -v "$(pwd)":/srv/jekyll \
  -p 4000:4000 \
  -p 35729:35729 \
  jekyll/jekyll:4.2.2 \
  jekyll serve --host 0.0.0.0 --force_polling --livereload
