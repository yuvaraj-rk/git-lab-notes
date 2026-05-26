#!/bin/bash

##### dd a Submodule #####
#Git provides a specific command designed to manage sub-repositories as submodules.
#Think of it as adding a "reference" to another repository within your current project.

#Try running a command in this format:
git submodule add <URL> <directory_name>

git submodule add https://github.com/labex-labs/git-playground.git git-playground
git submodule status
# d22f46ba8c2d4e07d773c5126e9c803933eb5898 git-playground (heads/master)

cat .gitmodules 
[submodule "git-playground"]
        path = git-playground
        url = https://github.com/labex-labs/git-playground.git
        branch = master

#Clone Missing Submodules

#Step-1: Git repo with submodules
git clone https://github.com/git/git

#Step-2: init submodules
git submodule init

#Step-3: fetch and checkout the submodules to appropriate commit
git submodule update

#Step-2: Submodule init as single step
git submodule update --init

#Step-2: init Submodule with nested submodules in single step
git submodule update --init --recursive


#Single step
git clone --recurse-submodules https://github.com/chaconinc/MainProject