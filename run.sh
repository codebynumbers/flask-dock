#!/bin/sh

branch=$1

git fetch origin
git checkout --track origin/$branch
python app.py
