#!/bin/bash

git clone https://github.com/yuvaraj-rk/github-actions-demo.git
cd github-actions-demo
ls
touch .github/workflows/node-ci.yml
touch package.json
echo "console.log('Hello, GitHub Actions!');" > index.js
git commit -m "Add Node.js CI workflow and project files"
git push
cat .github/workflows/node-ci.yml
<<'###BLOCK-COMMENT'
name: Node.js CI

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    
    steps:
      - uses: actions/checkout@v4
      - name: Use Node.js
        uses: actions/setup-node@v4
        with:
          node-version: "20"
      - name: Install dependencies
        run: npm install
      - name: Run tests
        run: npm test
###BLOCK-COMMENT
