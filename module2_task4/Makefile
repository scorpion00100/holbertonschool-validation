# Implement the next steps for the actual Go-Hugo website's
build: ## Generate the website from markdown and config files in the 'dist/' folder
	@./setup.sh
	@make ckeck
	@hugo

clean: ## Cleanup the content of the 'dist/' folder
	@rm -Rf dist/*

post: ## Create a new blog post using POST_TITLE and POST_NAME env variables
	@rm -Rf content/posts/$(POST_NAME).md
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title:.*/title: $(POST_TITLE)/' content/posts/$(POST_NAME).md
	@sed -i 's/draft:.*/draft: "true"/' content/posts/$(POST_NAME).md

check: ## succeed by default, and fail when presented with a dead link
	@markdownlint -f ./content/posts/*.md
	@markdown-link-check ./content/posts/*.md

validate: ## Validate the index
	@./w3c_validator.py ./dist/index.html

help: ## Show this help usage
	@echo "Usage: make <command>"
	@echo "-----"
	@grep "##" Makefile | head -n -1 | tr -d '#'
