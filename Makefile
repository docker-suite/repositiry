## Current directory
DIR:=$(strip $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST)))))

## Define the default version to package
default = 3.7

##
.DEFAULT_GOAL := package
.PHONY: *


help:
	@printf "\033[33mUsage:\033[0m\n  make [target] [arg=\"val\"...]\n\n\033[33mTargets:\033[0m\n"
	@grep -E '^[-a-zA-Z0-9_\.\/]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[32m%-15s\033[0m %s\n", $$1, $$2}'

run: ## Run a command in a new Docker container: make run v=[3.7|3.8|3.9|3.10] c=[...]
	@# -- use default version if v is not specified
	@$(eval version := $(or $(v),$(default)))
	@# -- make sure /config folder exist on host
	@mkdir -p $(DIR)/config
	@# -- make sure /public folder exist on host
	@mkdir -p $(DIR)/public
	@docker run -it --rm \
		-e http_proxy=${http_proxy} \
		-e https_proxy=${https_proxy} \
		-v $(DIR)/config:/config \
		-v $(DIR)/public:/public \
		-v $(DIR)/packages/alpine/common:/packages/common \
		-v $(DIR)/packages/alpine/v$(version):/packages/$(version) \
		-w /packages/$(version) \
		dsuite/apk-builder:$(version) $(c)

package: ## Build a specific package: make package v=[3.7|3.8|3.9|3.10] p=[<package-name1> <package-name2>]
	@# -- use default version if v is not specified
	@$(eval version := $(or $(v),$(default)))
	@# -- make sure a package a specified
	@test "$(p)"
	@# -- run the package command
	@$(MAKE) run v=$(version) c="package -p \"$(p)\""

dependency: ## Create a package dependency: make dependency v=3.7 p=php7.1 d=composer
	@# -- use default version if v is not specified
	@$(eval version := $(or $(v),$(default)))
	@# -- make sure a package and dependensy are specified
	@test "$(p)"
	@test "$(d)"
	@# -- Create dependency
	@docker run -it --rm \
		-e http_proxy=${http_proxy} \
		-e https_proxy=${https_proxy} \
		-v $(DIR)/config:/config \
		-v $(DIR)/packages/alpine/common:/packages \
		dsuite/apk-builder:$(version) bash -c "dependency -p $(p) -d \"$(d)\""  > /dev/null || true
	@docker run -it --rm \
		-e http_proxy=${http_proxy} \
		-e https_proxy=${https_proxy} \
		-v $(DIR)/config:/config \
		-v $(DIR)/packages/alpine/v$(version):/packages \
		dsuite/apk-builder:$(version) bash -c "dependency -p $(p) -d \"$(d)\""  > /dev/null || true

package-all: ## Build all packages for all versions
	@# use default version if v is not specified
	@$(eval version := $(or $(v),$(default)))
	@# Build all packages
	@$(MAKE) run v=$(version) c=package

shell: ## Get a command prompt inside the container
	@# use default version if v is not specified
	@$(eval version := $(or $(v),$(default)))
	@# get the prompt
	@$(MAKE) run v=$(version) c=bash

deploy: ## Deploy built packages to gh-pages
	npm run deploy
