# homebrew-tap

Personal Homebrew tap for command-line tools published by
[ch55secake](https://github.com/ch55secake).

## Install

Install a formula directly without manually tapping the repository:

```sh
brew install ch55secake/tap/apollo
brew install ch55secake/tap/convoy
brew install ch55secake/tap/augur
brew install ch55secake/tap/glance
brew install ch55secake/tap/orbit
brew install ch55secake/tap/symphony
```

## Formulae

| Formula | Description | Upstream |
| --- | --- | --- |
| `apollo` | Dashboarding TUI using Prometheus as a data source | [ch55secake/apollo](https://github.com/ch55secake/apollo) |
| `convoy` | Orchestrate multiple Alpine Linux containers and tasks | [ch55secake/convoy](https://github.com/ch55secake/convoy) |
| `augur` | Monitor SSH connections and terminate sessions with unrecognized keys | [ch55secake/augur](https://github.com/ch55secake/augur) |
| `glance` | TUI dashboard for managing GitHub pull requests | [ch55secake/glance](https://github.com/ch55secake/glance) |
| `orbit` | Terminal-native mission control for your servers | [ch55secake/orbit](https://github.com/ch55secake/orbit) |
| `symphony` | Auditable terminal coding-agent harness | [ch55secake/symphony](https://github.com/ch55secake/symphony) |

Augur currently provides a macOS arm64 binary and Linux arm64/amd64 binaries;
Intel macOS is not supported by the upstream release.

## Maintainer Notes

Formulae use immutable GitHub release assets and SHA-256 checksums. When an
upstream project publishes a new release, update its formula with the new
version, platform assets, and checksums, then run:

```sh
brew audit --new --strict --online --tap ch55secake/tap
brew style ch55secake/tap
```
