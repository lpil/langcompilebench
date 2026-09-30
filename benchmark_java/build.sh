#!/bin/sh
set -eu

gradle clean
time gradle compileJava
