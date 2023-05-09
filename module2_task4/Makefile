# Implement the next steps for the actual Go-Hugo website's
build: ## Generate the website from markdown and config files in the 'dist/' folder
	@./setup.sh
	@make check
	@hugo

clean: ## Cleanup the content of the 'dist/' folder
	@rm -Rf dist/*

post: ## Create a new blog post using POST_TITLE and POST_NAME env variables
	@rm -Rf content/posts/$(POST_NAME).md
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title:.*/title: $(POST_TITLE)/' content/posts/$(POST_NAME).md
	@sed -i 's/draft:.*/draft: "true"/' content/posts/$(POST_NAME).md

check: ## Check if post is valid
	@markdownlint ./content/posts/*.md
	@markdown-link-check ./content/posts/*.md

validate: ## Validate the index
	-./w3c_validator.py ./dist/index.html

help: ## Show this help usage
	@echo "Usage: make <command>"
	@echo "-----"
	@cat Makefile | grep "^\w*:.*##.*" | sed 's/## //'
