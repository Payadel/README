.PHONY: help watch-actions release-action changelog-action version version-as release release-dry release-init release-prerelease release-as release-minor release-patch release-major

# Variables
REF := $(if $(ref),$(ref),"dev")
SKIP_RELEASE_FILE := $(if $(skip_release_file),$(skip_release_file),true)
RELEASE_FILE_NAME := $(if $(release_file_name),$(release_file_name),"release")
RELEASE_DIRECTORY := $(if $(release_directory),$(release_directory),".")
VERSION := $(if $(version),$(version),"")
SKIP_CHANGELOG := $(if $(skip_changelog),$(skip_changelog),true)
CREATE_PR_FOR_BRANCH := $(if $(create_pr_for_branch),$(create_pr_for_branch),"")
RELEASE_AS := $(if $(release_as),$(release_as),"")

# Targets for running workflow commands
watch-actions: ## Watch a run until it completes, showing its progress
	gh run watch; notify-send "run is done!"

release-action: ## Run release action
	gh workflow run Release --ref $(REF) -f skip_release_file=$(SKIP_RELEASE_FILE) -f release_file_name=$(RELEASE_FILE_NAME) -f release_directory=$(RELEASE_DIRECTORY) -f skip_changelog=$(SKIP_CHANGELOG) -f version=$(VERSION) -f create_pr_for_branch=$(CREATE_PR_FOR_BRANCH)

changelog-action: ## Run changelog action
	gh workflow run Changelog --ref $(REF) -f version=$(VERSION)

# Targets for running standard-version commands
version: ## Get current program version
	node -p -e "require('./package.json').version"

version-as: ## Update program version
	standard-version --skip.changelog --skip.tag --skip.commit --release-as $(RELEASE_AS)

release: ## Release a version
	standard-version

release-dry: ## See the commands that running standard-version would run
	standard-version --dry-run; printf 'If everything is correct, use npm run release\n'

release-init: ## Release for the first time
	standard-version --first-release

release-prerelease: ## make a pre-release with optional option value to specify a tag id
	standard-version --prerelease

release-as: ## Specify the release type manually
	standard-version --release-as $(RELEASE_AS)

release-minor: ## Release minor version
	standard-version --release-as minor

release-patch: ## Release patch version
	standard-version --release-as patch

release-major: ## Release major version
	standard-version --release-as major

help: ## Display this help message
	@echo "Usage: make <target>"
	@echo ""
	@echo "Targets:"
	@awk -F ':|##' '/^[^\t].+?:.*?##/ { printf "  %-20s %s\n", $$1, $$NF }' $(MAKEFILE_LIST) | sort

.DEFAULT_GOAL := help
