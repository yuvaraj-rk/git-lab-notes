#!/bin/bash

##### Comparing Working Directory and Staging Area #####
#Diff of unstaged changes (by default)
git --no-pager diff

#add --no-pager if the result to be displayed directly in the terminal instead of opening in read-only text editor

#Diff staged changes (explicitly add --staged)
git diff --staged


##### Comparing Branches #####

git diff master feature-branch

#if current branch is feature-branch no need to mention explicitly)
git diff master

##### Comparing Specific Files #####
git diff <file-name>

#Diff specific file between branches
git diff master feature-branch -- <file-name>


##### Using External Diff Tools #####
#One popular tool is "vimdiff" when you need a more visual representation of your changes
#Step-1: set below config
git config --global diff.tool vimdiff
git config --global difftool.prompt false
#Step-2: view the changes with difftool command instead of diff
git difftool

#to exit vimdiff type:  :qa!
