#!/bin/bash

# adapted from https://github.com/r-lib/usethis/blob/master/inst/templates/readme-rmd-pre-commit.sh
# only run if no readme means nothing to check

errors=0
for file_to_check; do
  file_dir=$(dirname "$file_to_check")
  # echo "Looking for README.md in $file_dir"
  if [[ ! -f "$file_dir/README.md" ]]; then
    echo "No README.md found in $file_dir"
    cat << EOF > "$file_dir/README.md"
# \`$(basename "$file_dir")\` README

TODO

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
EOF
    errors=1
  fi
done
if [[ errors != 0 ]]; then
  exit 1
fi
