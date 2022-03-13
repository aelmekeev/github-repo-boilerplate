# Github Repository Boilerplate

This repository allows to create a repository with the default configuration.

## Triggering from github

[![Creation](https://github.com/aelmekeev/github-repo-boilerplate/actions/workflows/apply.yml/badge.svg?branch=main)](https://github.com/aelmekeev/github-repo-boilerplate/actions/workflows/apply.yml)

You can easily trigger repository creation from github web UI:

1. Open [terraform.tfvars](https://github.com/aelmekeev/github-repo-boilerplate/blob/main/terraform.tfvars).
2. Click on `Edit this file`.
3. Change `name` of the repository (and other parameters if needed).
4. Commit the change.

Repository will be provisioned by `Creation` github workflow.

## Triggering from local

### Prerequisites

* `terraform >= 0.13`
* [Github personal access token](https://github.com/settings/tokens) with the following scopes:
  * `public_repo` (or `repo` if you want to create private repository)
  * `read:org`

### Running

Update `terraform.tfvars` and run:

```sh
GITHUB_TOKEN=<your github token here> make create
```

Alternatively, you can define the name of the repository created as the parameter:

```sh
GITHUB_TOKEN=<your github token here> make create name=repository-name-here
```
