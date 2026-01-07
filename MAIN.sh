#!/bin/bash

# Determine shemadir list
bash ./schemadir.sh

# List all instances to apply
scripts=$(find . -mindepth 2 -type d -name .git -prune -o -type f -name "*.sh" -print)
for script in $scripts ; do bash $script ; done
