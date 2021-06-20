#!/bin/bash

for file_to_check; do
  markdownlint .
done
