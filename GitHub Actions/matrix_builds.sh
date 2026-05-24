#!/bin/bash

git clone https://github.com/yuvaraj-rk/github-actions-demo.git
cd github-actions-demo
ls
touch .github/workflows/matrix-build.yml
git add .
git commit -m "Add matrix strategy for Node.js versions"
git push
cat .github/workflows/matrix-build.yml
<<'###BLOCK-COMMENT'
name: Matrix Build

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest

    strategy:
      matrix:
        node-version: [18, 20, 22]

    steps:
      - uses: actions/checkout@v4
      - name: Use Node.js
        uses: actions/setup-node@v4
        with:
          node-version: ${{ matrix.node-version }}
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
          name: build-assets-${{ matrix.node-version }}
          path: dist

###BLOCK-COMMENT
