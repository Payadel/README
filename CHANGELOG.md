# Changelog

## 0.0.0 (2024-11-13)


### ⚠ BREAKING CHANGES

* **ci:** remove pr-labels.yml
* improve .gitignore
* dependabot.yml
* create setup-hooks.sh instead of requirements.py
* remove Makefile
* 
* **dependabot:** add `open-pull-requests-limit` and set to 10 as default
* remove lock.yml
* **release:** change release_directory default to '.'
* **changelog:** remove push event from changelog.yaml action
* **lock-action:** increase pr-lock-inactive-days from 1 to 15

### Features

* add `scripts/release.sh` ([e31876e](https://github.com/Payadel/README/commit/e31876e8c111e30456e9581142c7820d41cd09ff))
* add document oriented git hook ([e9bda3c](https://github.com/Payadel/README/commit/e9bda3c0a776df269be19cb4fb3cb832b68866ec))
* **changelog:** add create-changelog.yaml action to auto-generate changelog ([53cee86](https://github.com/Payadel/README/commit/53cee86d80145715a850b8e3b7b4e37ff9d09849))
* **changelog:** add release-please github action ([21e0db9](https://github.com/Payadel/README/commit/21e0db9d364ecfaf7d6c098ffcb70ecedf8205f1))
* **changelog:** add standard-version npm package to manage version and auto generate changelog ([96454e9](https://github.com/Payadel/README/commit/96454e959dea6981e936598a9b35dd802aa92eb9))
* **changelog:** running create-changelog.yaml manually with the specifying a version ([b51e587](https://github.com/Payadel/README/commit/b51e5872b24806d56a6b68bd2ced1ab39d399ae1))
* **ci:** add Google release-please.yml ([a011f3e](https://github.com/Payadel/README/commit/a011f3e07de28b1e2bdee3ded8c576d367b37623))
* **codeowner:** add CODEOWNERS ([60e7267](https://github.com/Payadel/README/commit/60e7267f1b3eaea87fe9c94e9e7340585df30bdf))
* **codeql:** add helper link to codeql.yml ([ceec48f](https://github.com/Payadel/README/commit/ceec48fd5948109edb4b6fa18a6e5b0ec9e74e62))
* **dependabot:** add `open-pull-requests-limit` and set to 10 as default ([2b4887b](https://github.com/Payadel/README/commit/2b4887b55cb7e390554d883bb079feef2678cfd8))
* **dependabot:** add dependabot.yml ([02b95f2](https://github.com/Payadel/README/commit/02b95f2e0d40fea2152f2e5ca5cb1d60a12402e5))
* **lock-action:** add inputs for workflow_dispatch and update pr-lock-inactive-days to 15 ([b2cd884](https://github.com/Payadel/README/commit/b2cd8841fe124f1723a636d7bb0e78bd9ef7ffc1))
* **makefile:** add help command for Makefile ([d460166](https://github.com/Payadel/README/commit/d46016661c3d85a3f093deba96a0bc4537a49aac))
* **makefile:** add Makefile for run scripts ([ca3a36e](https://github.com/Payadel/README/commit/ca3a36e026193700435a7e76c727ac1f94164b84))
* **package-json:** add sample input for github commands ([9f7755e](https://github.com/Payadel/README/commit/9f7755e93de40fd629e93d0a5e71a75da3f510ba))
* **package-json:** add scripts to package.json like GitHub cli, version ([98881ce](https://github.com/Payadel/README/commit/98881cecfe189b009aa19ad32b940b6a0eb7aca8))
* **pr-labels:** add disable_reviews input for pr-labels.yml GitHub action ([afc6938](https://github.com/Payadel/README/commit/afc693846b4e5c72ab6468a6c2d55d665c651e84))
* **readme:** add more badges ([d4cdc90](https://github.com/Payadel/README/commit/d4cdc9044bb0a747e0bc141227ddeecfa5f9eaa6))
* **release:** add create-release.yaml for create github action release ([1b70397](https://github.com/Payadel/README/commit/1b70397732d947e422eb18861de3ca34cb0bed9e))
* **release:** add create-release.yaml for create github action release ([a840785](https://github.com/Payadel/README/commit/a840785f414858b7b067661091a441ac9ce20e73))
* **release:** add the ability to create PR ([1662487](https://github.com/Payadel/README/commit/1662487c334b97a659a98880da40657441f509c0))
* **release:** add version to action input for create specific version ([419c6c0](https://github.com/Payadel/README/commit/419c6c017409bb93ac636689092535bc74ac2528))
* **release:** update create-release.yaml fix [#14](https://github.com/Payadel/README/issues/14) ([8d28bb5](https://github.com/Payadel/README/commit/8d28bb5e17b92ea50c87f1efe89e560f7f0ad21b))
* use `payadel/inputs` in actions ([6280425](https://github.com/Payadel/README/commit/6280425046f6db484d357ca1106c8e4e1f0c1633))
* **validation:** add commitlint, pre-commit for local and github validation ([3145403](https://github.com/Payadel/README/commit/3145403807d7b3cf63676bed42d7abb9be7bc5ea))


### Bug Fixes

* **action-validator:** run only 'commit-msg' stage ([#6](https://github.com/Payadel/README/issues/6)) ([1450105](https://github.com/Payadel/README/commit/1450105a38d72f0eb7d72cef5619fe4b49ea31e8))
* **changelog:** makes commands independent from package.json ([14d3dfb](https://github.com/Payadel/README/commit/14d3dfb7d1a6b0643c8319df5246abb6c0e7ed56))
* **changelog:** remove push event from changelog.yaml action ([09c6939](https://github.com/Payadel/README/commit/09c6939a931fa3f182f9a3e50b2b66d41e210d10))
* **changelog:** use payadel/changelog-sv-action in changelog.yaml ([fe77edf](https://github.com/Payadel/README/commit/fe77edf2bfa4b327ab1dd725e817a44f5fb9d546))
* **ci:** check PRs on main and dev ([8035c41](https://github.com/Payadel/README/commit/8035c418f52b70385142584b4c5e95626f672bc1))
* **ci:** improve codeql.yml ([8bb549f](https://github.com/Payadel/README/commit/8bb549fa5323c0e4c6a9ee4ed7b8b5008b225d08))
* **ci:** remove pr-labels.yml ([4cddb44](https://github.com/Payadel/README/commit/4cddb4473e050b3541971ae76305b0e59dfbc181))
* **ci:** update `Payadel/inputs` version ([5c5e496](https://github.com/Payadel/README/commit/5c5e49680b5f25ab117dafa69f089c95890a3ce0))
* **ci:** update payadel/changelog-sv-action version ([8f1ef89](https://github.com/Payadel/README/commit/8f1ef89dfe4f247527c85864bf85ebb4d81f95c7))
* **ci:** update versions ([a0220c5](https://github.com/Payadel/README/commit/a0220c562de8f085e2dcab554540c78c287629f6))
* **codeql:** add helper comments ([3301853](https://github.com/Payadel/README/commit/330185385660fd5c73a446deaab74cfde61379e5))
* **codeql:** the push event, which was activated by mistake, was disabled ([12cccc3](https://github.com/Payadel/README/commit/12cccc3c717c84c13f9643e605333b012e883c2c))
* commitlint.config.js ([8421199](https://github.com/Payadel/README/commit/8421199857e607f61b6b04a826ed80502fa9c688))
* **commitlint:** add package.json to fix commitlint hook ([6f78749](https://github.com/Payadel/README/commit/6f78749aee2222b2d6e02778cb49e1a1c8b8ca42))
* create setup-hooks.sh instead of requirements.py ([aa1004e](https://github.com/Payadel/README/commit/aa1004ebbe95833877ddc38a252644508f34d7b8))
* dependabot.yml ([e01100a](https://github.com/Payadel/README/commit/e01100a108a430b085b930ad5d90876914a66f9e))
* **dependabot:** set 'dev' as dependabot target branch ([92596be](https://github.com/Payadel/README/commit/92596be997adaef8bc1448d7d4f65f898be4c851))
* **docs:** remove "PROJECT_NAME" from docs. You don't need to look for "PROJECT_NAME" and change it! ([3f36969](https://github.com/Payadel/README/commit/3f369699a3c00bdd198cd6e05e9e7a6ade691899))
* fix ISSUE_TEMPLATE names in README.md ([7e99c07](https://github.com/Payadel/README/commit/7e99c0769ec7b1639527143c13fcbe5d2d9168e3))
* improve .gitignore ([97225a9](https://github.com/Payadel/README/commit/97225a996e7fe0215eb115c3bd1d9b5afaab4cee))
* improve .pre-commit-config.yaml ([6a4fb6f](https://github.com/Payadel/README/commit/6a4fb6fcc121e99e01cf0a9e648653e33197790e))
* **IssueTemplates:** update names & titles, fix labels, fix lines, ([2e99bb5](https://github.com/Payadel/README/commit/2e99bb59f9d4081d5eda180d1716844f0b3b2297))
* **labels:** fix permissions problem & update version ([fe08e20](https://github.com/Payadel/README/commit/fe08e20c725bb970a825a1b2c4f42626658c77ed))
* **lock:** fix default inputs when action execute on `schedule` ([d3e2eeb](https://github.com/Payadel/README/commit/d3e2eebf64fd9ccf0f6f7978194964c9952ad4dc))
* **lock:** fix lock.yml ([cdbb4f7](https://github.com/Payadel/README/commit/cdbb4f750e40f70d0886e0d67ae9f8d9d204f465))
* make project template and remove excess files ([c6cdd5e](https://github.com/Payadel/README/commit/c6cdd5ee6708a2b4edf4639679b327bfdd4cbe9f))
* **package-json:** fix GitHub scripts name ([7e056f5](https://github.com/Payadel/README/commit/7e056f562426494bdfef7984574af658f673b354))
* **pre-commit:** update `Payadel/pre-commit-hooks` version that fixes `document-oriented` ([27f8c55](https://github.com/Payadel/README/commit/27f8c5548894c2b6fe701a49faa8cd6a924179aa))
* **pre-commit:** use  for ([2d5d641](https://github.com/Payadel/README/commit/2d5d6411348e68bc14f9b72e0dfdc5df1a87cc1f))
* **pre-commit:** use mjs format type for commitlint.config ([f490b45](https://github.com/Payadel/README/commit/f490b45b2f1b01f7903fe5d4e82dde0e2c32e068))
* **readme:** suggest to use `https://shields.io/` site for more badges ([977859c](https://github.com/Payadel/README/commit/977859c969e8e8a4c6c5797530f960ae41aac0ac))
* **release:** add condition for 'Create Pull Request' step ([e98282d](https://github.com/Payadel/README/commit/e98282dfaddaec94717f4a4a7c3473779e204123))
* **release:** change release_directory default to '.' ([4b9efe1](https://github.com/Payadel/README/commit/4b9efe1ab3cea572057f7354c667ed4cc0ece442))
* **release:** for better clarity, change `template` directory name to `release` ([a3b38fc](https://github.com/Payadel/README/commit/a3b38fc6dbcbfeb46bcb19a4854100ab4e3a1162))
* **release:** remove excess codes and fix GitHub release ([f281322](https://github.com/Payadel/README/commit/f28132260e49792955db028b9988c0d86864ab64))
* **release:** update Payadel/release-sv-action from 0.0.2 to 0.0.3 ([78166ae](https://github.com/Payadel/README/commit/78166aef6cfa98d1cd912dfd979cbf3681be3d21))
* **release:** update Payadel/release-sv-action to 0.2.1 ([8adb436](https://github.com/Payadel/README/commit/8adb4365ae2d3b35248fbd9864d764bcc2bfdc28))
* **release:** use Payadel/release-sv-action@v0.0.2 for release ([f61fe5b](https://github.com/Payadel/README/commit/f61fe5bed9442775b81d04681963fe9d945d8205))
* remove lock.yml ([29925ad](https://github.com/Payadel/README/commit/29925ad2a36d84d5310d757bd76641f7395b4c44))
* remove Makefile ([f5db491](https://github.com/Payadel/README/commit/f5db491a8f3ae8ce64b736a01178b50a20277c51))
* remove unnecessary section from requirements.py ([8feaa9e](https://github.com/Payadel/README/commit/8feaa9eb9b5b16856642582068ec762fc26333ca))
* simplify action names ([43da9d5](https://github.com/Payadel/README/commit/43da9d539ce293d3d0d89c17466c89257b28f04f))
* **style:** refactor file styles like space, empty line, etc ([d541be3](https://github.com/Payadel/README/commit/d541be32188f16f71805a396544fb678b86de2e5))
* update `payadel/changelog-sv-action` in `changelog.yaml` ([2165b29](https://github.com/Payadel/README/commit/2165b29355102f63ee19b988c5aca32f871eb373))
* update `release-sv-action` version ([cca30df](https://github.com/Payadel/README/commit/cca30df2d01a561ce96731aab97ff5dca23a7b67))
* update action dependencies ([524e955](https://github.com/Payadel/README/commit/524e95514443aa6322aec8aa184ed9e1548b22da))
* update setup-hooks.sh script to install npm if the package.json is exist ([4c78a18](https://github.com/Payadel/README/commit/4c78a18cb3f13c5ef4d0b421f195a6c7a967b519))
* **version:** correct initial version (0.0.0 instead of 0.1.1) ([e2a7446](https://github.com/Payadel/README/commit/e2a74463ce744b9c52ebb153a30bd421a2aa95cf))


### Miscellaneous Chores

* release 0.0.0 ([d96dc2a](https://github.com/Payadel/README/commit/d96dc2a807e2dd37ffc29e3d76be4540f12c0f46))

All notable changes to this project will be documented in this file. We follow
the [Semantic Versioning 2.0.0](http://semver.org/) format.

## x.y.z - YYYY-MM-DD

### Added

- Nothing.

### Deprecated

- Nothing.

### Removed

- Nothing.

### Fixed

- Nothing.
