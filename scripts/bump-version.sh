#!/usr/bin/env bash

set -eu

echo "Bumping version to $1"
npm_config_yes=true npx dot-json package.json version $1
npm_config_yes=true npx dot-json manifest.json version $1
npm_config_yes=true npx dot-json build-output/package.json version $1
npm_config_yes=true npx dot-json build-output/manifest.json version $1
