build:## Build the website
	./setup.sh
	make check
	make lint
	make unit-tests
	make integration-tests
	make validate
	make package
	hugo

clean:## Clean the website
	-rm -r dist/
	-rm awesome-website.zip

post:## Create a new post
	-hugo new posts/$(POST_NAME).md && echo "---\ntitle: \"$(POST_TITLE)\"\ndate: 2022-11-20T09:03:20-08:00\ndraft: false\n---" > content/posts/$(POST_NAME).md

check:## Check if post is valid
	markdownlint -f ./content/posts/*.md
	markdown-link-check ./content/posts/*.md

unit-tests:## Make unittest
	go test -v -short -coverprofile=coverage-units.out

integration-tests:## run intregrated tests
	go test -v -coverprofile=coverage-integrations.out

validate:## Validate the index
	make lint

package:## Create the .zip package of the server
	-zip -r awesome-website.zip awesome-api dist/

lint:## Lint Readme and Deploy
	-markdownlint README.md
	-markdownlint DEPLOY.md

help:## Makefile help 
	-grep "##" Makefile | head -n -1 | tr -d '#'
