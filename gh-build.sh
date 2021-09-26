#!/bin/bash
set -x

##############
# BUILD DOCS #
##############

# Python Sphinx, configured with source/conf.py
# See https://www.sphinx-doc.org/
make clean
make html

#######################
# Update GitHub Pages #
#######################

# Configure the user info.
git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${GITHUB_ACTOR}@users.noreply.github.com"

# Add the deploy remote
git remote add deploy "https://token:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git"

ghp-import build/html/ --push --force --no-jekyll --remote deploy

# exit cleanly
exit 0
