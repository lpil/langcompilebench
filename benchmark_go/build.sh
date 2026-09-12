#!/bin/sh
set -eu

echo Cleaning
go clean -cache

echo Building
time go build ./...
