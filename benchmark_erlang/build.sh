#!/bin/sh
set -eu

rm -rf _build
rebar3 get-deps 
time rebar3 compile
