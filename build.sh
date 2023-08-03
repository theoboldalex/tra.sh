#!/usr/bin/env bash

find content -iname "*.md" -exec sh -c 'OUT=$(echo "{}"); echo "$OUT"' {} \;



