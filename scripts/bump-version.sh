#!/usr/bin/env bash

set -eu

echo "Bumping version to $1"

for filename in "${@:2}"
do
    echo "Setting version on $filename"
    npm_config_yes=true npx dot-json $filename version $1
done
