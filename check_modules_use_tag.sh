#!/bin/bash

for file in "$@"; do
  if ! grep "^version: v[0-9].[0-9].[0-9].$" "$file"; then
    echo "file $file references a version which is not a tag, e.g. 'vX.X.X'"
    exit 1
  fi
done
