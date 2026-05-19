#!/bin/bash

##### Creating Lightweight Tags #####
#Simple tag creation to the latest commit
git tag v0.1

#Tag a specific commit using the commit hash
git tag v0.0.1 ebf9194

#To view all tags
git tag

##### Creating Annotated Tags #####

git tag -a v1.0 -m "First major release"

#To see the details of an annotated tag using the git show command
git show v1.0

#Note: tags don't automatically get pushed to remote repositories. If you want to share your tags, you need to explicitly push them!

##### Listing Tags #####
#To list all tags in your repository:
git tag

#to search for tags matching a particular pattern, 
#use the -l (or --list) option with a wildcard
git tag -l "v1.*"

#Tags, including the annotation messages for annotated tags
## For Annotated tags, prints the first line of the annotation message
## For lightweight tags, only prints the commit message
git tag -n


##### Checking Out Tags #####
git checkout v1.0
#This will put your repository in a "detached HEAD" state at the commit that v1.0 points to.

#Create a branch from a tag to make new changes and retain them
git checkout -b branch-name v1.0

#Note: Any commits you make will be orphaned (not on any branch) when you check out a different branch, unless you explicitly create a new branch to retain them.


##### Deleting Tags #####
#To remove the tag v0.0.1 from the local repository
git tag -d v0.0.1

#Be careful when deleting tags, especially if they've been pushed to a shared repository.