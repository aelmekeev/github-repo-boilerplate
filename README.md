# Github Repository Boilerplate

This repository allows to create a repository with the default configuration.

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
