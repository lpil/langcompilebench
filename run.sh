#!/bin/sh

set -eu

cd "benchmark_$1" || exit 1

times=

i=1
while [ "$i" -le 11 ]; do
  printf 'starting %s\n' "$i"

  stderr=$(./"$2" 2>&1 >/dev/null)

  printf 'done\n'

  time=$(printf '%s\n' "$stderr" |
    sed -n 's/^real[[:space:]]*0m\([0-9.]*\)s$/\1/p')

  times=$times'
'"$time"
  i=$((i + 1))
done

printf '%s\n' "$times" | sort -n

cd ..
