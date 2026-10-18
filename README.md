# BaankeyBihari Homebrew tap

Homebrew formulae for [BaankeyBihari](https://github.com/BaankeyBihari) projects.

## Install

```sh
brew install BaankeyBihari/tap/athena
```

Or tap once and install by name:

```sh
brew tap BaankeyBihari/tap
brew install athena
```

## Formulae

| Formula | Description | Platforms |
|---|---|---|
| [`athena`](Formula/athena.rb) | Install, pin, and sync AI agent skills and plugins from git repositories ([repo](https://github.com/BaankeyBihari/athena)) | macOS (Apple Silicon), Linux (x86_64) |

## How updates work

`athena` installs the prebuilt binaries attached to each [athena release](https://github.com/BaankeyBihari/athena/releases). The [Update athena](.github/workflows/update-athena.yml) workflow checks for a new release once a day. Before it pushes a new version, it:

1. verifies each binary's [SLSA level 3](https://slsa.dev) provenance with [slsa-verifier](https://github.com/slsa-framework/slsa-verifier), confirming the binary was built from the athena repository at that release tag;
2. pins the formula to the verified SHA-256 checksums;
3. installs, tests, and audits the formula (`brew install`, `brew test`, `brew audit --strict`).

The maintainer can start an update right away with:

```sh
gh workflow run update-athena.yml -R BaankeyBihari/homebrew-tap
```

## Security

Report a vulnerability in this tap (a formula or its update workflow) privately through [this repository's security advisories](https://github.com/BaankeyBihari/homebrew-tap/security/advisories/new). Report vulnerabilities in athena itself to the [athena repository](https://github.com/BaankeyBihari/athena/security/advisories/new). Please don't open public issues for either.
