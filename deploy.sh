#!/bin/bash/env bash
hugo
commit="no message for this commit"
[[ "${1}" ]] && commit=${1}

cd public
pwd
git add .
git commit -m "${commit}"
git push origin main

sleep 5
cd ..
pwd
git add .
git commit -m "${commit}"
git push origin main

sleep 5
cd content
pwd
git add .
git commit -m "${commit}"
git push origin master