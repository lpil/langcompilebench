#!/bin/sh
set -eu

echo Cleaning
rm -f src/*.cmi src/*.cmx src/*.o src/*.cmo

echo Building
time ocamlopt -c src/*.ml
