#!/bin/bash

######### Stashing Changes #########
#Git stash to save your work-in-progress
#Saves only the already tracked & staged files
git stash

#With a customer comment/messages to clearly track the saved changes from the stash list
git stash push -m "First change"

#to also include untracked files: -u or --include-untracked
git stash -u

#to view all the stashed changes
git stash list

#clear all saved stash changes
git stash clear


######### Applying Stashed Changes #########

#Think of git stash as a "save area" for your work-in-progress changes. 
#Whenever you stash something, Git stores it in a numbered list (a stack), where 
#stash@{0} is always the most recent one you created.

#Apply the latest stash change to the current working branch (change stays in the stash list)
git stash apply

#To restore specific changes from the stash
git stash apply stash@{1}

#stash@{0} is the newest item in your list, 
#stash@{1} refers to the second-most recent stash you created.

#Remove & apply the latest stash change to the current working branch
git stash pop

#The difference between apply and pop is that:
## apply keeps the changes in your stash, while
## pop removes them from the stash after applying.

#Why have both apply and pop? 
## "apply" is useful when you want to apply the same stashed changes to multiple branches. 
## "pop" is more commonly used when you're just resuming work on the same branch.

######### Creating Branches from Stashes #########

#Create a new branch and apply the stashed changes to the new branch
## Note: The stash is then "removed" from the stash list (you will see below info after branch creation).
#Dropped refs/stash@{0} (28ec3bcbc21f9497fa4bb4d1fc803d4859e63202)
#So the changes should be committed if you need to keep the changes.
git stash branch feature-branch


########### Managing Multiple Stashes ##########

# First stash
echo "Change 1" >> README.md
git stash push -m "First change"
#Saved working directory and index state On feature-branch: First change

# Second stash with untracked file
echo "Change 2" >> README.md
echo "Note 2" >> notes.txt
git stash push -u -m "Second change"
#Saved working directory and index state On feature-branch: Second change

# Third stash
echo "Change 3" >> README.md
git stash push -m "Third change"
#Saved working directory and index state On feature-branch: Third change

git stash list
<<'###BLOCK-COMMENT'
stash@{0}: On feature-branch: Third change
stash@{1}: On feature-branch: Second change
stash@{2}: On feature-branch: First change
###BLOCK-COMMENT

#Examine the contents of a specific stash without applying it:
git stash show stash@{1}
<<'###BLOCK-COMMENT'
 README.md | 1 +
 notes.txt | 1 +
 2 files changed, 2 insertions(+)
###BLOCK-COMMENT

#For more detail, add the -p flag to see the full diff:
git stash show -p stash@{1}
<<'###BLOCK-COMMENT'
diff --git a/README.md b/README.md
index 3a965fb..164d2e4 100644
--- a/README.md
+++ b/README.md
@@ -1,3 +1,4 @@
 # Git Stash Lab
 This is a work in progress
 Feature in progress
+Change 2
diff --git a/notes.txt b/notes.txt
index 745a6a4..2a870af 100644
--- a/notes.txt
+++ b/notes.txt
@@ -1,2 +1,3 @@
 Some important notes
 More notes
+Note 2
###BLOCK-COMMENT

echo "Change 4" >> README.md
git stash push -m "Fourth change"
#Saved working directory and index state On feature-branch: Fourth change

echo "Change 5" >> README.md
git stash push -m "Fifth change"
#Saved working directory and index state On feature-branch: Fifth change

git stash list
<<'###BLOCK-COMMENT'
stash@{0}: On master: Fifth change
stash@{1}: On master: Fourth change
stash@{2}: On master: Third change
stash@{3}: On master: Second change
stash@{4}: On master: First change
###BLOCK-COMMENT


####### Cleaning Up Stashes ########

#To remove a single stash, you can use the "drop" command
#This removes the third stash (with "Third change") from our list. This does not apply the changes to the current working branch
git stash drop stash@{2}
#Dropped stash@{2} (d8158d0cb3637a2c92dc7a8091d69dfc59c517a9)

git stash list
<<'###BLOCK-COMMENT'
stash@{0}: On feature-branch: Fifth change
stash@{1}: On feature-branch: Fourth change
stash@{2}: On feature-branch: Second change
stash@{3}: On feature-branch: First change
###BLOCK-COMMENT

#Retrieve latest change (Fifth Change) and apply it to the current working branch
git stash pop
<<'###BLOCK-COMMENT'
On branch feature-branch
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
	modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")
Dropped refs/stash@{0} (56da7e24a10a5f1da3c82d4979fc8f104470c281)
###BLOCK-COMMENT
#Fifth change will no longer be in the stash list


git stash list
<<'###BLOCK-COMMENT'
stash@{0}: On feature-branch: Fourth change
stash@{1}: On feature-branch: Second change
stash@{2}: On feature-branch: First change
###BLOCK-COMMENT

#To remove/delete/discard all stash changes without applying to current working branch
git stash clear
git stash list
#No stash list will exist anymore
