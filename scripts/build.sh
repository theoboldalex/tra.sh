#!/usr/bin/env bash

find content -iname "*.md" -exec sh -c 'OUT=$(echo "{}" | sed "s/content\/[0-9]\{4\}\/[0-9]\{2\}\(.*\).md/public\1.htmlbody/"); markdown "{}" > "$OUT"' {} \;
find public -iname "*.htmlbody" -exec sh -c 'NAME=$(echo "{}" | sed "s/htmlbody/html/"); cat partials/header.html "{}" partials/footer.html > "$NAME"' \;
find public -iname "*.htmlbody" -exec sh -c 'rm "{}"' \;



