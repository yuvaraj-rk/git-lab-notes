#!/bin/bash

git clone https://github.com/yuvaraj-rk/github-actions-demo.git
cd github-actions-demo
ls
touch .github/workflows/env-demo.yml
git add .github/workflows/env-demo.yml#
git add .github/workflows/env-demo.yml
git commit -m "Add workflow with environment variable"
git push
git add .github/workflows/env-demo.yml\ngit commit -m "Update greeting variable"\ngit push
cat .github/workflows/env-demo.yml

<<'###BLOCK-COMMENT'
name: Environment Variable Demo

on: [push]

env:
  GREETING: "Hi"

jobs:
  print-greeting:
    runs-on: ubuntu-latest
    steps:
      - name: Print Greeting
        run: echo "${{ env.GREETING }}, World!"
###BLOCK-COMMENT
