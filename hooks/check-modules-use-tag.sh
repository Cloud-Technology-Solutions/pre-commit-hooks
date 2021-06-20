#!/bin/bash

for file_to_check; do
  if grep -E '^version:' "$file_to_check"; then
    if ! grep -E '^version: v([0-9]+)\.([0-9]+)\.([0-9]+)$' "$file_to_check"; then
      echo "file $file_to_check references a version which is not a tag, e.g. 'vX.X.X'"
      exit 1
    fi
  fi
done
