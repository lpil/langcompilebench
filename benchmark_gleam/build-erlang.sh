#!/bin/sh
set -eu

echo Cleaning
gleam clean

echo Building
time gleam build --target erlang
