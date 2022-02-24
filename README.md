# OAS 3.0 & Swagger 2.0 Lint Action

GitHub Action for validating OAS 3.0 or Swagger 2.0 JSON or YAML files using [Stoplight Spectral](https://stoplight.io/open-source/spectral/)

[![CI](https://github.com/ahmetgeymen/spectral-lint-action/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/ahmetgeymen/spectral-lint-action/actions/workflows/main.yml)

---

## Input

`file_path`: Argument references path of spec file on workspace. (Optional)

In case of absecence, the file named `openapi-spec.yml` is used by default

---

## Example

You may copy & paste yaml below into your repo under path `.github/workflows/oas-spec-lint.yml`

```yaml
name: OAS Linting Action
on:
  push:
    branches: [main]
jobs:
  linting:
    name: Linting
    runs-on: ubuntu-latest
    steps:
      # This action checks-out your repository under $GITHUB_WORKSPACE, so your workflow can access it.
      - name: Check out repository
        uses: actions/checkout@v2
    
      # Runs 'spectral lint'
      - name: Run spectral lint
        uses: ahmetgeymen/spectral-lint-action@v1.0
        with:
          file_path: openapi-spec.yml
```
