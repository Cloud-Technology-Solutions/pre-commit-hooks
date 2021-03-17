#!/bin/bash

for file in "$@"; do
  grep "^version: v[0-9].[0-9].[0-9].$" "$file"
done
