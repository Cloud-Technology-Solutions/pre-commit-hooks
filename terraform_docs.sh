#!/usr/bin/env bash
set -eo pipefail

for d in $(find . -maxdepth 1 -type d -not -name '.*' | grep -Ev 'docs|site'); do
  if terraform-docs md "$d" >"$d"/README.md; then
    git add "./$d/README.md"
  fi
done
