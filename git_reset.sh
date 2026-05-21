#!/bin/bash

##### Soft Reset: Moving HEAD #####
#2 commit changes will be reverted and changes will be in staging are for a new single commit
#Note: 2 commit histories will be erased from local repository (remote push of new commit will need force push o rewrite remote repository history)
git reset --soft HEAD~2

##### Mixed Reset: Unstaging Changes #####
#Moves staged changes to Unstaged state (changes not lost and continue to present in the current directory)
git reset HEAD

##### Hard Reset: Discarding Changes #####
#Removes the mentioned commit changes permanently from the repository, local directory.
#Note: Push changes after hard reset only after coordination with the team
git reset --hard HEAD~1

##### Using Reflog to Recover Lost Commits #####
#A safety net that records all changes to HEAD, allowing you to recover from almost any Git accident.
#It's like a super-history that even records history-rewriting commands like reset.
git reflog
<<'###BLOCK-COMMENT'
20d3e33 (HEAD -> master) HEAD@{0}: reset: moving to HEAD~1
cae7dbd HEAD@{1}: commit: Add division function
20d3e33 (HEAD -> master) HEAD@{2}: reset: moving to HEAD
20d3e33 (HEAD -> master) HEAD@{3}: reset: moving to HEAD
20d3e33 (HEAD -> master) HEAD@{4}: commit: Add subtraction and multiplication functions
038b3c4 HEAD@{5}: reset: moving to HEAD~2
bf16f72 HEAD@{6}: commit: Add multiplication function
bfa8c5d HEAD@{7}: commit: Add subtraction function
038b3c4 HEAD@{8}: commit: Add addition function
fd6fa7f HEAD@{9}: commit (initial): Initial commit
###BLOCK-COMMENT

#To recover your lost commit, you can reset to the state before your hard reset
git reset --hard HEAD@{1}

git --no-pager reflog
<<'###BLOCK-COMMENT'
cae7dbd (HEAD -> master) HEAD@{0}: reset: moving to HEAD@{1}
20d3e33 HEAD@{1}: reset: moving to HEAD~1
cae7dbd (HEAD -> master) HEAD@{2}: commit: Add division function
20d3e33 HEAD@{3}: reset: moving to HEAD
20d3e33 HEAD@{4}: reset: moving to HEAD
20d3e33 HEAD@{5}: commit: Add subtraction and multiplication functions
038b3c4 HEAD@{6}: reset: moving to HEAD~2
bf16f72 HEAD@{7}: commit: Add multiplication function
bfa8c5d HEAD@{8}: commit: Add subtraction function
038b3c4 HEAD@{9}: commit: Add addition function
fd6fa7f HEAD@{10}: commit (initial): Initial commit
###BLOCK-COMMENT

#The reflog is a powerful safety net, allowing you to recover from almost any Git accident. 
#However, remember that it's local to your machine and temporary (entries are typically kept for 30 to 90 days). 
#It's not a substitute for regular backups or for pushing your work to a remote repository.


##### Time-based Resets #####
#Allow you to reset your repository to its state at a specific point in time.
#This resets your repository to its state from 1 hour ago. 
#You can use various time descriptors like "yesterday", "2 days ago", "3 minutes ago", etc.
git reset --hard master@{"1 hour ago"}

#Be careful with time-based resets, as they can be less precise than resetting to a specific commit. 
#Always check the state of your repository after a time-based reset to make sure you've arrived where you intended.