# Changelog

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.

### [0.1.3](https://github.com/Payadel/README/compare/v0.1.2...v0.1.3) (2023-03-14)


### Features

* **changelog:** running create-changelog.yaml manually with the specifying a version ([b51e587](https://github.com/Payadel/README/commit/b51e5872b24806d56a6b68bd2ced1ab39d399ae1))
* **package-json:** add sample input for github commands ([9f7755e](https://github.com/Payadel/README/commit/9f7755e93de40fd629e93d0a5e71a75da3f510ba))
* **package-json:** add scripts to package.json like GitHub cli, version ([98881ce](https://github.com/Payadel/README/commit/98881cecfe189b009aa19ad32b940b6a0eb7aca8))
* **release:** add version to action input for create specific version ([419c6c0](https://github.com/Payadel/README/commit/419c6c017409bb93ac636689092535bc74ac2528))
* **release:** update create-release.yaml fix [#14](https://github.com/Payadel/README/issues/14) ([8d28bb5](https://github.com/Payadel/README/commit/8d28bb5e17b92ea50c87f1efe89e560f7f0ad21b))


### Development: CI/CD, Build, etc

* add sample input for github commands ([d2df8f6](https://github.com/Payadel/README/commit/d2df8f61ba9d5c684678903ebf9130ea18416eb1))
* **changelog:** running create-changelog.yaml manually with the specifying a version ([3a8fd1a](https://github.com/Payadel/README/commit/3a8fd1a89ebd3a596d7b8900c629c27255849a8c))
* **package-json:** add more scripts like GitHub cli, version ([8c1529e](https://github.com/Payadel/README/commit/8c1529e0241835b3a41b44f2a1b331440e3faf6d))
* **package-json:** fix GitHub scripts name ([e41ea14](https://github.com/Payadel/README/commit/e41ea14098d4104b18179656e7379db6c467e5b8))
* **release:** add version to action input for set specific version ([d517114](https://github.com/Payadel/README/commit/d517114fd462e212aa2beff34c73c1520a4f21da))
* **release:** the execution of the release action becomes manual ([f956253](https://github.com/Payadel/README/commit/f956253a62d3a4f4af2c6ca204fdfd91f6458f1e))
* remove unnecessary section from requirements.py ([07ffbfb](https://github.com/Payadel/README/commit/07ffbfb42e4d640253e215dbd7f4bcef8445672e))
* simplify action names ([9bd0ecf](https://github.com/Payadel/README/commit/9bd0ecf7c9779bc2cc82c062267c627b429b5f1c))


### Fixes

* **package-json:** fix GitHub scripts name ([7e056f5](https://github.com/Payadel/README/commit/7e056f562426494bdfef7984574af658f673b354))
* **release:** for better clarity, change `template` directory name to `release` ([a3b38fc](https://github.com/Payadel/README/commit/a3b38fc6dbcbfeb46bcb19a4854100ab4e3a1162))
* remove unnecessary section from requirements.py ([8feaa9e](https://github.com/Payadel/README/commit/8feaa9eb9b5b16856642582068ec762fc26333ca))
* simplify action names ([43da9d5](https://github.com/Payadel/README/commit/43da9d539ce293d3d0d89c17466c89257b28f04f))
* **style:** refactor file styles like space, empty line, etc ([d541be3](https://github.com/Payadel/README/commit/d541be32188f16f71805a396544fb678b86de2e5))
* **version:** correct initial version (0.0.0 instead of 0.1.1) ([e2a7446](https://github.com/Payadel/README/commit/e2a74463ce744b9c52ebb153a30bd421a2aa95cf))

### [0.1.2](https://github.com/Payadel/README/compare/v0.1.1...v0.1.2) (2023-03-12)

### Features

* **changelog:** add create-changelog.yaml action to auto-generate
  changelog ([53cee86](https://github.com/Payadel/README/commit/53cee86d80145715a850b8e3b7b4e37ff9d09849))
* **release:** add create-release.yaml for create github action
  release ([1b70397](https://github.com/Payadel/README/commit/1b70397732d947e422eb18861de3ca34cb0bed9e))

### Documents

* **readme:** update download
  script ([121047d](https://github.com/Payadel/README/commit/121047d9067428588590222e5cb7c7389a0d3f9b))
* **readme:** update usage
  section ([d9c5066](https://github.com/Payadel/README/commit/d9c50669490d7028dafc8f391f78e0888838cdbc))

### Development: CI/CD, Build, etc

* **changelog:** add create-changelog.yaml
  action ([cfe3925](https://github.com/Payadel/README/commit/cfe392573d5a3026da3ca9ad265d9a3f92ea4a0f))
* enable blank issue in
  config.yml ([01b9591](https://github.com/Payadel/README/commit/01b9591acb414140880416285025f86ea5a94c1e))
* **release:** update create-release.yaml to manage version and create
  release ([3e11339](https://github.com/Payadel/README/commit/3e11339dca15b605964a9a2cb403f9de20691854))

### Fixes

* **action-validator:** run only 'commit-msg'
  stage ([#6](https://github.com/Payadel/README/issues/6)) ([1450105](https://github.com/Payadel/README/commit/1450105a38d72f0eb7d72cef5619fe4b49ea31e8))

### 0.1.1 (2023-03-12)

### Features

* **changelog:** add standard-version npm package to manage version and auto generate
  changelog ([96454e9](https://github.com/Payadel/README/commit/96454e959dea6981e936598a9b35dd802aa92eb9))
* **release:** add create-release.yaml for create GitHub action
  release ([a840785](https://github.com/Payadel/README/commit/a840785f414858b7b067661091a441ac9ce20e73))
* **validation:** add commitlint, pre-commit for local and github
  validation ([3145403](https://github.com/Payadel/README/commit/3145403807d7b3cf63676bed42d7abb9be7bc5ea))

### Development: CI/CD, Build, etc

* **changelog:** add standard-version for create
  changelog ([575d21d](https://github.com/Payadel/README/commit/575d21d4af6aa37908cee9a453cb413394f1de05))
* **release:** add create-release.yaml for create GitGub action
  release ([07ba75d](https://github.com/Payadel/README/commit/07ba75d36145c0b61bca8b030e80d84fd2bdf90e))

## 0.1.0 (2022-07-14)

### Added

- template directory: Separates template files from project readme files

### Fixed

- Minor updates