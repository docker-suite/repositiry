## Current directory
DIR:=$(strip $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST)))))

## Define the default version to package
default = 3.12

##
.DEFAULT_GOAL := help
USE_TTY ?= -t
.PHONY: *


help:
	@printf "\033[33mUsage:\033[0m\n  make [target] [arg=\"val\"...]\n\n\033[33mTargets:\033[0m\n"
	@grep -E '^[-a-zA-Z0-9_\.\/]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[32m%-15s\033[0m %s\n", $$1, $$2}'

run: ## Run a command in a the docker apk-builder container: make run v=[3.7|3.8|3.9|3.10|3.11|3.12] c=[...]
	@# -- use default version if v is not specified
	@$(eval version := $(or $(v),$(default)))
	@# -- make sure /config folder exist on host
	@mkdir -p $(DIR)/config
	@# -- make sure /public folder exist on host
	@mkdir -p $(DIR)/public
	@docker run -i ${USE_TTY} --rm \
		-e http_proxy=${http_proxy} \
		-e https_proxy=${https_proxy} \
		-e no_proxy=${no_proxy} \
		-v $(DIR)/config:/config \
		-v $(DIR)/public:/public \
		-v $(DIR)/packages/alpine/common:/packages/common \
		-v $(DIR)/packages/alpine/v$(version):/packages/$(version) \
		-w /packages/$(version) \
		dsuite/apk-builder-dev:$(version) $(c)

package: ## Build a specific package: make package v=[3.7|3.8|3.9|3.10|3.11|3.12] p=[<package-name1> <package-name2>]
	@# -- use default version if v is not specified
	@$(eval version := $(or $(v),$(default)))
	@# -- make sure a package a specified
	@test "$(p)"
	@# -- run the package command
	@$(MAKE) run v=$(version) c="package -p \"$(p)\""

packages: ## Build all packages: make packages v=[3.7|3.8|3.9|3.10|3.11|3.12]
	@# use default version if v is not specified
	@$(eval version := $(or $(v),$(default)))
	@# Build all packages
	@$(MAKE) run v=$(version) c=package

dependency: ## Create a package dependency: make dependency v=3.7 p=php7.1 d=composer
	@# -- use default version if v is not specified
	@$(eval version := $(or $(v),$(default)))
	@# -- make sure a package and dependensy are specified
	@test "$(p)"
	@test "$(d)"
	@# -- Create dependency
	@docker run -i ${USE_TTY} --rm \
		-e http_proxy=${http_proxy} \
		-e https_proxy=${https_proxy} \
		-e no_proxy=${no_proxy} \
		-v $(DIR)/config:/config \
		-v $(DIR)/packages/alpine/common:/packages \
		dsuite/apk-builder-dev:$(version) bash -c "dependency -p $(p) -d \"$(d)\""  > /dev/null || true
	@docker run -i ${USE_TTY} --rm \
		-e http_proxy=${http_proxy} \
		-e https_proxy=${https_proxy} \
		-e no_proxy=${no_proxy} \
		-v $(DIR)/config:/config \
		-v $(DIR)/packages/alpine/v$(version):/packages \
		dsuite/apk-builder-dev:$(version) bash -c "dependency -p $(p) -d \"$(d)\""  > /dev/null || true

deploy: ## Deploy built packages to repository
	@# use default version if v is not specified
	@$(eval version := $(or $(v),$(default)))
	@# -- make sure /public folder exist on host
	@mkdir -p $(DIR)/public
	@mkdir -p $(DIR)/log
	docker run -i ${USE_TTY} --rm \
		-e HTTP_PROXY=${http_proxy} \
		-e HTTPS_PROXY=${https_proxy} \
		-e NO_PROXY=${no_proxy} \
		-e JFROG_CLI_OFFER_CONFIG=false \
		--env-file .env \
		-v $(DIR)/public:/public \
		-v $(DIR)/log:/root/.jfrog/logs \
		-w /public \
		docker.bintray.io/jfrog/jfrog-cli-go:latest /bin/bash -c " \
			echo 'Starting publishing' \
			&& jfrog rt config --url \$$ART_URL --user \$$ART_USER --apikey \$$ART_API_KEY --interactive=false \
			&& jfrog rt upload \"*.pub\" alpine/ --recursive=false \
			&& jfrog rt upload \"/public/v$(version)/x86_64/*\" alpine/v$(version)/x86_64/ --recursive=false \
			&& echo 'All packages published successfully' \
			"

shell: ## Get a command prompt inside the apk-builder container
	@# use default version if v is not specified
	@$(eval version := $(or $(v),$(default)))
	@# get the prompt
	@$(MAKE) run v=$(version) c=bash

clean: ## Clean the workspace
	@rm -rf $(DIR)/packages/alpine/*/pkg
	@rm -rf $(DIR)/packages/alpine/*/*/pkg
