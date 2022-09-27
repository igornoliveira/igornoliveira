#!/bin/bash/env bash
hugo
commit="No message for this commit"
[[ "${1}" ]] && commit=${1}

cd public
echo "##########################################"
echo "Realizando novo commit no diretorio ${PWD}"
echo "##########################################"
git add .
git commit -m "${commit}"
git push origin main

cd ..
echo "##########################################"
echo "Realizando novo commit no diretorio ${PWD}"
echo "##########################################"
git add .
git commit -m "${commit}"
git push origin main

cd content
echo "##########################################"
echo "Realizando novo commit no diretorio ${PWD}"
echo "##########################################"
git add .
git commit -m "${commit}"
git push origin master