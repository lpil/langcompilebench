#!/bin/sh
set -eu

echo Cleaning
gradle clean

echo Building
time gradle compileKotlin
