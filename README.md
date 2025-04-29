[![Test](https://github.com/toshimaru/serverkit-vscode/actions/workflows/test.yml/badge.svg)](https://github.com/toshimaru/serverkit-vscode/actions/workflows/test.yml)
[![Gem Version](https://badge.fury.io/rb/serverkit-vscode.svg)](https://badge.fury.io/rb/serverkit-vscode)

# serverkit-vscode

[Serverkit](https://github.com/serverkit/serverkit) plug-in for [VSCode](https://code.visualstudio.com/).

## Install

```rb
# Gemfile
gem "serverkit-vscode"
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
