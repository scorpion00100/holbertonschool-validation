build: ## Build the website
	./setup.sh
	make check
	hugo

clean: ## Clean the website
	-rm -r dist/

post: ## Create a new post
	-hugo new posts/$(POST_NAME).md && echo "---\ntitle: \"$(POST_TITLE)\"\ndate: 2022-11-20T09:03:20-08:00\ndraft: false\n---" > content/posts/$(POST_NAME).md

check: ## Check if post is valid
	markdownlint -f ./content/posts/*.md
	markdown-link-check ./content/posts/*.md


validate: ## Validate the index
	-./w3c_validator.py ./dist/index.html

help: ## Makefile help 
	-grep "##" Makefile | head -n -1 | tr -d '#'
