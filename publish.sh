#!/bin/bash

./gradlew clean gitPublishCopy

cd build/gitPublish
git add -A
git commit -m "Publishing website update"
git push

cd -
