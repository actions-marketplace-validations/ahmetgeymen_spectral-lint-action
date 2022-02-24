#!/bin/sh -l

echo "==============================="
echo "Linting OpenAPI Spec input file"
echo "==============================="

# creating predefined rulesets based on OpenAPI or AsyncAPI
printf '{\n  "extends": ["spectral:oas", "spectral:asyncapi"]\n}\n' > .spectral.json

# run linting command
spectral lint "$INPUT_FILE_PATH"