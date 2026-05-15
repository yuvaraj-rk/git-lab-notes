#!/bin/bash

mkdir git-staging-lab
cd git-staging-lab
git init
echo "print('Hello, Git!')" > hello.py
python hello.py
echo "*.log" > .gitignore

cat .gitignore
echo "This is a log file" > debug.log
git add .gitignore
git commit -m "Initial commit with hello.py and .gitignore"
echo "print('Hello, Git! Welcome to the staging area.')" > hello.py
git diff

#Discard local changes
git restore hello.py
git status
