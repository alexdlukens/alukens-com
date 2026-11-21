PORT ?= 1313
NAME ?=

.PHONY: help serve drafts build clean new init

help: ## list targets
	@grep -E '^[a-z]+:.*## ' $(MAKEFILE_LIST) | awk -F':.*## ' '{printf "  %-8s %s\n", $$1, $$2}'

serve: ## dev server with live reload (http://localhost:1313)
	hugo server --port $(PORT)

drafts: ## dev server including draft posts
	hugo server -D --port $(PORT)

build: ## production build into public/ (gitignored)
	hugo --gc --minify

clean: ## remove build output
	rm -rf public resources/_gen

new: ## create a post: make new NAME=my-post
	@test -n "$(NAME)" || { echo 'usage: make new NAME=my-post'; exit 1; }
	hugo new posts/$(NAME).md

init: ## fetch theme submodule after a fresh clone
	git submodule update --init --recursive
