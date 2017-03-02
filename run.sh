#!/bin/bash

branch=$1

echo "Working dir: `pwd`, branch: $branch"

# in case we have changes we didn't commit in the build
git stash
git fetch
git checkout $branch
git merge origin/$branch
python app.py

