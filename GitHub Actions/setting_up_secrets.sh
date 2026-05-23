#!/bin/bash

git clone https://github.com/yuvaraj-rk/github-actions-demo.git
cd github-actions-demo
ls
touch .github/workflows/secrets-demo.yml
git add .github/workflows/secrets-demo.yml
git commit -m "Add workflow to test secrets"
git push
cat .github/workflows/secrets-demo.yml
<<'###BLOCK-COMMENT'
name: Secrets Demo
on: [push]

jobs:
  use-secret:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v4

      - name: Print Secret
        env:
          MY_SECRET_VAL: ${{ secrets.MY_SECRET }}
        run: |
          echo "Printing secret directly (masked): ${{ secrets.MY_SECRET }}"
          echo "Printing secret from env (masked): $MY_SECRET_VAL"

###BLOCK-COMMENT
