#!/bin/sh
set -eu

echo Cleaning
old-gleam-v1.17.0 clean

echo Building
time old-gleam-v1.17.0  build --target erlang
