#!/bin/sh
set -eu

rm -rf _build
time mix compile
