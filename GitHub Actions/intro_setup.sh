#!/bin/bash

pwd
git clone https://github.com/yuvaraj-rk/github-actions-demo.git
ls -F
ls
cd github-actions-demo
mkdir -p .github/workflows
touch .github/workflows/main.yml
ls -R .github
tree .git
tree .github
git add .
git status
git commit -m "Setup GitHub Actions workflow directory"
git push
