# Payadel README template

A template for a convenient and standard start of projects.

- **Documents** like readme, issue/pull-request template, contributing, changelog, etc.
- **GitHub actions** like auto-generate-changelog, release, labels, etc.
- **Git hooks and evaluators** like pre-commit, commitlint, etc.

## Usage

0. Preparation

Make sure you are on an unprotected branch (eg `dev` branch).

In this template, the `main` branch (or `master`) is protected by default. This means that there is no permission to
commit, merge or push in these branches. Of course, you can change the rules **whenever you want**.

1. Download Template

> Note: we use `wget` tool to download the template file. You can install wget or use other tools (including direct download).

For download the **latest** version:

```shell
wget https://github.com/payadel/readme/releases/latest/download/release.zip
```

Or **specific** version like v0.1.3:

```shell
https://github.com/Payadel/README/releases/download/v0.1.3/release.zip
```

2. Unzip Template

```shell
unzip release.zip; wait; rm release.zip
```

3. Run requirements script

This script makes sure that tools like [pre-commit](https://pre-commit.com/) and `npm` packages are installed.

```shell
chmod +x requirements.py && ./requirements.py
```

Or use **python**:

```shell
python3 requirements.py
```

4. (Optional) Commit changes

In the next step, we are going to change the files. So it is better to commit the files.

```shell
git commit -am "Your message! For example: chore: add Payadel readme template"
```

5. Update files

Look at the added files, especially the **document** files, and customize according to your project.

For example:
- **CHANGELOG.md**: if you want use `changelog` GitHub action, it is better to remove this file. Because `changelog` action does not rewrite this file, adds new data to the top of the file.
- If you want to use **git hooks**: tell the programmers and document that after cloning the project, everyone must run the `requirements` file.

6. Suggested actions

- If you use `changelog` GitHub action: this action creates pull request, so needs permission to create PR. Please see [this link](https://stackoverflow.com/a/73155199/9999187) to give access.
- Using git hooks to protect the main branches is good but not enough. The developer can disable the hooks or may forget to enable the hooks after cloning the project. Therefore, it is better to config the settings on the server side (such as GitHub, etc). For example, you can see [this link](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/defining-the-mergeability-of-pull-requests/managing-a-branch-protection-rule) for GitHub settings.
- For more convenience, scripts are defined in the `package.json` file. For example, GitHub's command-line tool (`gh`) is one of them. Using this tool is **optional**, but it can increase your comfort. To use this tool, first make sure it is installed. Secondly, log in to your account to have the necessary access. for more information: `gh --help`

## Files

### Issues

- Bug report template

- Feature request template

- Codebase improvement template

- Support Question template

### Github workflows

- CodeQL: Actions for running CodeQL analysis to find **security vulnerabilities**

- Sync labels: By using this workflow, you can sync current labels with labels configured in a YAML manifest.

- Lock: Lock closed issues and PRs

- PR Labels

### Other:

- labels.yml: label colors
- Pull request template
- Code of conduct
- Contributing
- Security
- Changelog
- License (GPLv3)
- Readme

## Support

Reach out to the maintainer at one of the following places:

- [GitHub issues](https://github.com/Payadel/Readme/issues/new?assignees=&labels=question&template=04_SUPPORT_QUESTION.md&title=support%3A+)

## Contributing

First off, thanks for taking the time to contribute! Contributions are what make the free/open-source community such an
amazing place to learn, inspire, and create. Any contributions you make will benefit everybody else and are **greatly
appreciated**.

Please read [our contribution guidelines](docs/CONTRIBUTING.md), and thank you for being involved!

## License

This project is licensed under the **GPLv3**.

See [LICENSE](LICENSE) for more information.

## Related

Here are some related projects:

- [Awesome README](https://github.com/matiassingers/awesome-readme)
- [shields](https://shields.io/)
- [keepachangelog](https://keepachangelog.com/en/1.0.0/)
- [Semantic Versioning 2.0.0](https://semver.org/)
- [You are what you document](https://www.ybrikman.com/writing/2014/05/05/you-are-what-you-document/)
