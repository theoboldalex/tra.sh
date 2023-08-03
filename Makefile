links:
	find content -iname '*.md' | sed -e 's/\(.*\)\.md/\<a href="\1.html">\1\<\/a\>/g' -e 's/\(.*\)[0-9]\{4\}\/[0-9]\{2\}\//\1/g' -e 's/\(.*\)\.md/\1/'
build:
	./scripts/build.sh

