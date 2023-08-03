#!/usr/bin/env bash

find content -iname "*.md" -exec sh -c 'OUT=$(echo "{}" | sed "s/content\/[0-9]\{4\}\/[0-9]\{2\}\(.*\).md/public\1/"); markdown "{}" > "$OUT"' {} \;
find public -type f ! -name "*.*" -exec sh -c 'NAME=$(echo "{}" | sed "s/$/\.html/"); cat partials/header.html "{}" partials/footer.html > "$NAME"' \;
find public -type f ! -name "*.*" -exec sh -c 'rm "{}"' \;



