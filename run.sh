#!/bin/sh

set -euo pipefail

echo Benchmarking $1 $2 >&2

cd "benchmark_$1" || exit 1

times=

i=1
while [ "$i" -le 11 ]; do
  printf '  %s/11\n' "$i" >&2

  stderr=$(./"$2" 2>&1 >/dev/null)

  time=$(printf '%s\n' "$stderr" |
    sed -n 's/^real[[:space:]]*0m\([0-9.]*\)s$/\1/p')

  times=$times'
'"$time"
  i=$((i + 1))
done

printf '%s\n' "$times" | sort -n | sed -n '6p'

cd ..
