# Flakes Templates
This repository provides Nix flake templates for quick project setup.
## Usage
To initialize a new flake using one of the templates, run:
```bash
nix flake init --template github:moreauadrien/flakes#<template_name>
```
Replace `<template_name>` with the name of the template you want to use.

### Quick Import with Script
Alternatively, you can use the `templates` script located in `./scripts/` for an easier, interactive way to import templates:
```bash
./scripts/templates
```
This script allows you to browse and select a template interactively. It requires `jq` and `fzf` to be installed on your system.

> **Note**: All templates assume you are using **zsh** as your shell.
## Available Templates
- `trivial` — Minimal template, does nothing except set up a basic flake structure.
- `go` — Full Go development environment with:
  - Go compiler
  - [sqlc](https://sqlc.dev) — SQL-to-Go code generator
  - [air](https://github.com/air-verse/air) — Live reload tool for Go
  - [gopls](https://github.com/golang/tools/tree/master/gopls) — Go language server
  - [golangci-lint](https://golangci-lint.run) — Linter for Go code
  - [delve](https://github.com/go-delve/delve) — Debugger for Go code
  - [go-blueprint](https://github.com/Melkeydev/go-blueprint) — Scaffold web project quickly
