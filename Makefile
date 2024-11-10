.PHONY: help watch-actions release-action changelog-action version version-as release release-dry release-init release-prerelease release-as release-minor release-patch release-major

# Variables
REF := $(if $(ref),$(ref),"dev")
VERSION := $(if $(version),$(version),"")
IGNORE_SAME_VERSION_ERROR := $(if $(ignore-same-version-error),$(ignore-same-version-error),false)
IGNORE_LESS_VERSION_ERROR := $(if $(ignore-less-version-error),$(ignore-less-version-error),false)
CREATE_PR_FOR_BRANCH := $(if $(create-pr-for-branch),$(create-pr-for-branch),"")
GENERATE_CHANGELOG := $(if $(generate-changelog),$(generate-changelog),'auto')
SKIP_RELEASE_FILE := $(if $(skip-release-file),$(skip-release-file),true)
RELEASE_FILE_NAME := $(if $(release-file-name),$(release-file-name),"release")
RELEASE_DIRECTORY := $(if $(release-directory),$(release-directory),".")

RELEASE_AS := $(if $(release-as),$(release-as),"")

# Targets for running workflow commands
watch-actions: ## Watch a run until it completes, showing its progress
	gh run watch; notify-send "run is done!"

release-action: ## Run release action
	gh workflow run Release --ref $(REF) \
		-f version=$(VERSION) \
		-f ignore-same-version-error=$(IGNORE_SAME_VERSION_ERROR) \
		-f ignore-less-version-error=$(IGNORE_LESS_VERSION_ERROR) \
		-f create-pr-for-branch=$(CREATE_PR_FOR_BRANCH) \
		-f generate-changelog=$(GENERATE_CHANGELOG) \
		-f skip-release-file=$(SKIP_RELEASE_FILE) \
		-f release-file-name=$(RELEASE_FILE_NAME) \
		-f release-directory=$(RELEASE_DIRECTORY)

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
	standard-version --dry-run
	printf 'If everything is correct, use npm run release\n'

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
