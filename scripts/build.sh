#!/usr/bin/env bash

# generate hyperlinks for index page
find content -iname '*.md' | \
sed -e 's/\(.*\)\.md/\<a href="\1.html">\1\<\/a\>\<\br\>/g' -e 's/content\/[0-9]\{4\}\/[0-9]\{2\}\///g' -e 's/\(.*\)\.md/\1/' > public/links.html
# create index page with posts listing
cat partials/header.html partials/hero.html public/links.html partials/footer.html > public/index.html
rm public/links.html

# convert content to html
find content -iname "*.md" -exec sh -c 'OUT=$(echo "{}" | sed "s/content\/[0-9]\{4\}\/[0-9]\{2\}\(.*\).md/public\1/"); markdown "{}" > "$OUT"' {} \;
find public -type f ! -name "*.*" -exec sh -c 'NAME=$(echo "{}" | sed "s/$/\.html/"); cat partials/header.html "{}" partials/footer.html > "$NAME"' \;
find public -type f ! -name "*.*" -exec sh -c 'rm "{}"' \;

