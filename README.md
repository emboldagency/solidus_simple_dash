# SolidusSimpleDash

[![release.yml](https://embold.net/api/github/badge/workflow-status.php?repo=solidus_simple_dash&workflow=release.yml)](https://github.com/emboldagency/solidus_simple_dash/actions/workflows/release.yml) [![ci.yml](https://embold.net/api/github/badge/workflow-status.php?repo=solidus_simple_dash&workflow=ci.yml)](https://github.com/emboldagency/solidus_simple_dash/actions/workflows/ci.yml) <!--
-->![Semantic Versioning](https://embold.net/api/github/badge/semver.php?repo=solidus_simple_dash)

Add simple dashboard to review your sales based on variants, products and orders, it contains:
- Best selling products
- Top grossing products
- Best selling taxons
- Abandoned carts
- Abandoned cart items
- Checkout steps
- New users

## Fork Notice

This repository is a fork of [magma-labs/solidus_simple_dash](https://github.com/magma-labs/solidus_simple_dash).
It may include customizations, fixes, or changes specific to the needs of emboldagency or its clients. For updates and documentation, refer to this repository: [emboldagency/solidus_simple_dash](https://github.com/emboldagency/solidus_simple_dash).

## Installation

Add this line to your solidus application's Gemfile:

```ruby
gem 'solidus_simple_dash', github: 'emboldagency/solidus_simple_dash', branch: 'master'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g solidus_simple_dash:install
```

## Usage

Visit ```/overview``` on Admin section

## Preview
![solidus_simple_dash](https://user-images.githubusercontent.com/957520/43218208-597c6014-9009-11e8-8155-c2f583cf4627.png)

## Testing

Then just run the following to automatically build a dummy app if necessary and
run the tests:

```shell
bundle exec rake
```
