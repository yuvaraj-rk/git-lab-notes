#!/bin/bash

git clone https://github.com/yuvaraj-rk/github-actions-demo.git
cd github-actions-demo
ls
touch .github/workflows/ci.yml
echo "console.log('Hello, GitHub Actions!');" > index.js
ls -l index.js
git status
git add .
git commit -m "Add CI workflow and index.js"
git push
cat .github/workflows/ci.yml
<<'###BLOCK-COMMENT'
name: CI

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout code
        uses: actions/checkout@v4
      - name: List files
        run: ls -la
###BLOCK-COMMENT
