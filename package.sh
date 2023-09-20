#!/usr/bin/env bash

# Run with ./package.sh 0.0.2
# requires zip, curl, jq and yarn

set -e

version="$1"

# create release directories
rm -rf ./build
mkdir -p build/pf2e-kingmaker-tools-token-mapping/

# create archive
cp module.json map.json README.md LICENSE CHANGELOG.md build/pf2e-kingmaker-tools-token-mapping/

cd build
zip -r release.zip pf2e-kingmaker-tools-token-mapping
cd -
