#!/bin/bash

#To see the HEAD commit hash
git rev-parse HEAD

#Examine the HEAD file
#Check the contents of the HEAD file:
cat .git/HEAD

#Check for repository corruption
#Use the git fsck command to check the repository's integrity
##This command performs a comprehensive check of the Git database. It will report any corrupted objects.
git fschk --full

#Fixing the error -> fatal: bad object HEAD
#Method 1: Copy .git/HEAD file from a backup

#Method 2: Manually Setting HEAD to Point to the Branch
echo "ref: refs/heads/master" > .git/HEAD

#Method 3: Resetting HEAD Based on refs
git symbolic-ref HEAD refs/heads/master

#Method 4: Using Git's recovery tools
#use the fsck command with the --full flag to identify issues:
git fsck --full

# First, find valid commits
ls -la .git/objects/??/*

# Then reset to a specific commit (replace with an actual hash)
git reset --hard COMMIT_HASH

#Method 5: Cloning a Fresh Copy (Last Resort)
cd ~/project
mv git-demo git-demo-broken
git clone https://github.com/yourusername/git-demo.git
