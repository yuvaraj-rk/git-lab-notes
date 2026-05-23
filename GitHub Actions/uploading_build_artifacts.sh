#!/bin/bash

git clone https://github.com/yuvaraj-rk/github-actions-demo.git
cd github-actions-demo
ls
touch .github/workflows/upload-artifacts.yml
git add .
git commit -m "Add build step and upload artifacts"
git push
cat .github/workflows/upload-artifacts.yml
<<'###BLOCK-COMMENT'
name: Upload Artifacts

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
      - name: Build project
        run: |
          mkdir dist
          echo "This is the build artifact" > dist/build.txt
      - name: Run tests
        run: npm test
      - name: Upload build artifact
        uses: actions/upload-artifact@v4
        with:
          name: build-assets
          path: dist
###BLOCK-COMMENT
