#!/bin/sh
set -eu

echo Cleaning
dotnet clean

echo Building
time dotnet build
