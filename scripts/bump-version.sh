#!/usr/bin/env bash

set -eu

for filename in "${@:2}"
do
    echo "⬆️ Bumping version to $1 in file $filename"
    npm_config_yes=true npx dot-json $filename version $1
done
