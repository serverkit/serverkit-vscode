[![Test](https://github.com/serverkit/serverkit-vscode/actions/workflows/test.yml/badge.svg)](https://github.com/serverkit/serverkit-vscode/actions/workflows/test.yml)
[![Gem Version](https://badge.fury.io/rb/serverkit-vscode.svg)](https://badge.fury.io/rb/serverkit-vscode)

# serverkit-vscode

[Serverkit](https://github.com/serverkit/serverkit) plug-in for [VSCode](https://code.visualstudio.com/).

## Installation

```rb
# Gemfile
gem "serverkit-vscode"
```

## Usage

### Prerequisites

- Ensure you have [serverkit](https://github.com/serverkit/serverkit) gem installed
- Ensure you have [VSCode CLI](https://code.visualstudio.com/docs/configure/command-line) installed on your system

### Basic Example

Create a recipe file that uses the vscode resources:

```yaml
# recipe.yml
resources:
  # Install GitHub Copilot extension
  - type: vscode_package
    name: github.copilot
```

Then apply your recipe with Serverkit:

```console
$ serverkit apply recipe.yml
```

## Resource

### vscode_package

Install specified VSCode package.

#### Attributes

- `name` - package name (required)
- `version` - package version (optional)

#### Example

```yaml
resources:
  - type: vscode_package
    name: GitHub.vscode-pull-request-github
  - type: vscode_package
    name: github.copilot
    version: 1.156.0
```

## Contributing

Bug reports and pull requests are welcome on GitHub at [serverkit/serverkit-vscode](https://github.com/serverkit/serverkit-vscode).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
