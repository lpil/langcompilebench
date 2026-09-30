#!/bin/sh

set -euo pipefail

current=$(asdf current)

while read -r name version _; do
  list_bin_paths="$ASDF_DATA_DIR/plugins/$name/bin/list-bin-paths"

  if [ -x "$list_bin_paths" ]; then
    bin_path=$("$list_bin_paths" | cut -d ' ' -f 2-)
  else
    bin_path=bin
  fi

  path="$ASDF_DATA_DIR/installs/$name/$version/$bin_path"
  PATH="$path${PATH:+:$PATH}"
done <<EOF
$current
EOF

"$@"
