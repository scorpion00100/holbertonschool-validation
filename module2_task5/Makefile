build: ## Generate the website from markdown and config files in the 'dist/' folder
	go build
	hugo > /dev/null 2>&1
	make check

clean: ## Cleanup the content of the 'dist/' folder
	rm -rf ./dist/ awesome-api awesome-api.log coverage-units.out coverage-integrations.out
	make stop

post: ## Create a new blog post using POST_TITLE and POST_NAME env variables
	hugo new posts/$(POST_NAME).md
	sed -i '/title:/c\title: "$(POST_TITLE)"' content/posts/$(POST_NAME).md

check: ## Check validate post
	markdownlint content/ && markdown-link-check content/posts/*.md

validate: ## Validate the web site
	python3 opt/W3C-Validator/w3c_validator.py dist/index.html || true

run: ## run all apis and logs it
	./awesome-api > ./awesome-api.log 2>&1 &

stop: ## kills all process by usiing PID
	pkill awesome-api

lint: ## check all errors
	golangci-lint run

test: ## testing all files
	make unit-tests
	make integration-tests
	make validate

unit-tests: ## make unit-tests
	go test -v -short -coverprofile=coverage-units.out

integration-tests: ## make intregration-tests
	go test -v  -coverprofile=coverage-integrations.out

help: ## show this help usage
	@fgrep -h "##" $(MAKEFILE_LIST) | sed -e 's/\(\:.*\#\#\)/\:\ /' | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
