build:
	markdown content/2023/07/test_post.md > body.html
	cat header.html body.html footer.html > index.html
links:
	find content -iname '*.md' | sed -e 's/content\/\(.*\)\.md/\<a href="\1.html">\1\<\/a\>/g' -e 's/\(.*\)[0-9]\{4\}\/[0-9]\{2\}\//\1/g' -e 's/\(.*\)\.md/\1/'

