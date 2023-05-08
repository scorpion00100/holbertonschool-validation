help: ## Show this help usage
	@cat Makefile | grep "^\w*:.*##.*" | sed 's/## //'

lint: ##lint the code
	@golangci-lint run

build: ## Compile source code of the application to a binary named awesome.api
	@make lint
	@go build

run: ## Run the application in background and write logs in awesome-api.log
	@./awesome-api >./awesome-api.log 2>&1 &

stop: ## Stop the application
	@pkill awesome-api

clean: ## Stop the application and delete awesome-api and awesome-api.log
	@rm -rf awesome-api
	@rm -rf awesome-api.log

test: ## Test to ensure expected beahaviour
	@curl http://localhost:9999
	@curl http://localhost:9999/health
