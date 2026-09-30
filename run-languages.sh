#!/bin/sh

set -euo pipefail 

table=

for dir in benchmark_*; do
  [ -d "$dir" ] || continue

  name=${dir#benchmark_}

  for build in "$dir"/build-*.sh "$dir"/build.sh; do
    [ -f "$build" ] || continue
    build=${build#*/}

    if [ "$build" = build.sh ]; then
      variant=
    else
      variant=${build#build-}
      variant=${variant%.sh}
    fi

    stdout=$(./run.sh "$name" "$build")

    if [ -n "$variant" ]; then
      row=$(printf '| %s %s | %s |\n' "$name" "$variant" "$stdout")
    else
      row=$(printf '| %s | %s |\n' "$name" "$stdout")
    fi

  table=$table'
'"$row"

  done
done

printf "%s\n" "$table" | column -t -s '|'
