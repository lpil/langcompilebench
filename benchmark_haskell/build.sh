#!/bin/sh
set -eu

echo Removing dist
rm -rf dist-newstyle

echo Building deps
cabal build --only-dependencies

echo Building
time cabal build
