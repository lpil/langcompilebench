#!/bin/sh
set -eu

echo Cleaning
cargo clean

echo Building
time cargo build
