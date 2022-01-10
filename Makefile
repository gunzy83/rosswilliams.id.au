.PHONY: build server server-prod publish build-and-publish

.ONESHELL:
#.SHELL := /usr/bin/bash

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

clean: ## Clean public directory
	@rm -rf public

build: clean ## Build website
	@hugo

server: ## Run hugo server in dev mode
	@hugo serve --port 1314

server-prod: ## Run hugo server in prod mode (testing cookies, comments etc)
	@hugo serve --port 1314 --environment production

publish: ## Publish contents on public if it exists
	@if [[ -d ./public ]]; then \
		AWS_PROFILE=gunzy aws s3 sync public s3://rosswilliams.id.au;\
		AWS_PROFILE=gunzy aws cloudfront create-invalidation --distribution-id E1GNLO8ZMT6U1O --paths '/*';\
	  else \
	    echo "Public directory does not exist, skipping...";\
	  fi

build-and-publish: build publish ## Build website and publish it to S3
