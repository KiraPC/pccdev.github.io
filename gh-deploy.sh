#!/bin/sh
if [ -z "$1" ]
then
  echo "Which folder do you want to deploy to GitHub Pages?"
  exit 1
fi
git push origin `git subtree split --prefix dist main`:gh-pages --force
