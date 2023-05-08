help: ## Show this help usage
	@cat Makefile | grep "^\w*:.*##.*" | sed 's/## //'

lint: ## Catch such errors without the need to compile or execute the application
	@golangci-lint run ./*.go

build: ## Compile source code of the application to a binary named awesome.api
	@go get github.com/gorilla/mux
	@go build -o awesome-api ./*.go

run: ## Run the application in background and write logs in awesome-api.log
	@./awesome-api >./awesome-api.log 2>&1 &

stop: ## Stop the application
	@pkill awesome-api

clean: ## Stop the application and delete awesome-api and awesome-api.log
	@make stop
	@rm -rf awesome-api awesome-api.log

test: ## Test to ensure expected beahaviour
	@curl http://localhost:9999
	@curl http://localhost:9999/health
