# Implement the next steps for the actual Go-Hugo website's
build:
	@hugo

clean:
	@rm -Rf dist/*

post:
	@rm -Rf content/posts/$(POST_NAME).md
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title:.*/title: $(POST_TITLE)/' content/posts/$(POST_NAME).md
	@sed -i 's/draft:.*/draft: "true"/' content/posts/$(POST_NAME).md
