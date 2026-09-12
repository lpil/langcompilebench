#!/bin/sh
set -eu

echo Cleaning
rm -rf dist

echo Building
time npx --yes --package=typescript@6 -- tsc
