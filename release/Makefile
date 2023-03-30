.PHONY: watch-actions release-action changelog-action version version-as release release-dry release-init release-prerelease release-as release-minor release-patch release-major

REF := $(if $(ref),$(ref),"dev")
SKIP_RELEASE_FILE := $(if $(skip_release_file),$(skip_release_file),true)
RELEASE_FILE_NAME := $(if $(release_file_name),$(release_file_name),"release")
RELEASE_DIRECTORY := $(if $(release_directory),$(release_directory),".")
VERSION := $(if $(version),$(version),"")
SKIP_CHANGELOG := $(if $(skip_changelog),$(skip_changelog),true)
CREATE_PR_FOR_BRANCH := $(if $(create_pr_for_branch),$(create_pr_for_branch),"")
RELEASE_AS := $(if $(release_as),$(release_as),"")


# Define targets for running workflow commands
watch-actions:
	gh run watch; notify-send "run is done!"

release-action:
	gh workflow run Release --ref $(REF) -f skip_release_file=$(SKIP_RELEASE_FILE) -f release_file_name=$(RELEASE_FILE_NAME) -f release_directory=$(RELEASE_DIRECTORY) -f skip_changelog=$(SKIP_CHANGELOG) -f version=$(VERSION) -f create_pr_for_branch=$(CREATE_PR_FOR_BRANCH)

changelog-action:
	gh workflow run Changelog --ref $(REF) -f version=$(VERSION)

# Define targets for running standard-version commands
version:
	node -p -e "require('./package.json').version"

version-as:
	standard-version --skip.changelog --skip.tag --skip.commit --release-as $(RELEASE_AS)

release:
	standard-version

release-dry:
	standard-version --dry-run; printf 'If everything is correct, use npm run release\n'

release-init:
	standard-version --first-release

release-prerelease:
	standard-version --prerelease

release-as:
	standard-version --release-as $(RELEASE_AS)

release-minor:
	standard-version --release-as minor

release-patch:
	standard-version --release-as patch

release-major:
	standard-version --release-as major
