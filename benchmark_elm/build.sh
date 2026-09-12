#!/bin/sh
set -eu

echo Cleaning
rm -rf elm-stuff

echo Building
time elm make src/Main.elm --output=/dev/null
