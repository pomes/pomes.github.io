#!/bin/bash

if [ $(git status -s | wc -l) -gt 1 ]
then
    echo "Please commit all changes before publishing"
    exit
fi

./gradlew clean gitPublishCopy

cd build/gitPublish
git add -A
git commit -m "Publishing website update"
git push

cd -
