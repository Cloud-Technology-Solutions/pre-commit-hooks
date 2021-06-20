#!/bin/bash

for file in "$@"; do
  if grep -E '^version:' "$file"; then
    if ! grep -E '^version: v([0-9]+)\.([0-9]+)\.([0-9]+)$' "$file"; then
      echo "file $file references a version which is not a tag, e.g. 'vX.X.X'"
      exit 1
    fi
  fi
done
