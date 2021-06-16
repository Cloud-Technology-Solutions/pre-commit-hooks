#!/bin/bash

# adapted from https://github.com/r-lib/usethis/blob/master/inst/templates/readme-rmd-pre-commit.sh
# only run if no readme means nothing to check

for i; do
  echo "Looking for README.md in $(dirname $i)"
  if [[ -f "$(dirname $i)/README.md" ]]; then
    echo "README.md found at $(dirname $i)/README.md"
  else
    echo "No README.md found in $(dirname $i)"
    exit 1
  fi
done
