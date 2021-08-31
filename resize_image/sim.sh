find . -maxdepth 1 -iname "*.jpg" | xargs -p -L1 -I{} convert -resize 15% "{}" "{}"
