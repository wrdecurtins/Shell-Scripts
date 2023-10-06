#!/bin/bash

resetBranch() {
  git branch -d $1;
  git fetch;
  git checkout $1;
  git pull origin $1;
}

BRANCH=$(git rev-parse --abbrev-ref HEAD)

if [[ "$BRANCH" == 'main' || "$BRANCH" == 'master' ]];
  then
    git checkout -b remake;
    resetBranch $1
    git branch -d remake;
  else
    resetBranch $1
    git checkout -
fi
