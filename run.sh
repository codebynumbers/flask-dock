#!/bin/bash

branch=$1

echo "Working dir: `pwd`, branch: $branch"

git fetch
git checkout $branch
git merge origin/$branch
python app.py

