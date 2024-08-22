#!/bin/sh

hugo --cleanDestinationDir --gc --minify

cd public
if git diff --quiet; then
  echo "No changes on this build, exiting."
  exit 0
fi
git add .

# Commit changes.
msg="Rebuilding site `date`"
if [ $# -eq 1 ]; then
  msg="$1"
fi
git commit -m "$msg"
