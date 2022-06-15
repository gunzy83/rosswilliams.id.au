.PHONY: clean test-actions serve

.ONESHELL:

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

clean: ## Clean public directory
	@rm -rf public

test-actions: ## Test Github Actions workflow
	@act

serve: ## Run local hugo server
	@export HUGO_COMMAND='server --bind=0.0.0.0 --buildDrafts'; \
	 docker-compose up
