build:
	markdown content/2023/07/test_post.md > body.html
	cat header.html body.html footer.html > index.html
