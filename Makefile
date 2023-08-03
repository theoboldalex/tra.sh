links:
	find content -iname '*.md' | \
	sed -e 's/\(.*\)\.md/\<a href="\1.html">\1\<\/a\>/g' -e 's/content\/[0-9]\{4\}\/[0-9]\{2\}\///g' -e 's/\(.*\)\.md/\1/' > public/links.html
	cat partials/header.html partials/hero.html public/links.html partials/footer.html > public/index.html
	rm public/links.html

build:
	./scripts/build.sh

