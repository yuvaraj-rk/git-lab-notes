#!/bin/bash

##### Basic Log Usage #####
#Display git commit history with latest at the top
git log

#only display each commit in a single line with short commit hash & commit message
git log --oneline

#If the logs are printed on new page and the result is lost on exit, use below option (before log) "--no-pager" to list the result directly on terminal to retain the log output
git --no-pager log

#To download all the latest commits history from remote repository
git fetch origin

#To permanently change the setting
git config --global core.pager "less -X"

#Not recommended (will dump all logs on the terminal without paging)
git config --global pager.log false

##### Formatting Log Output #####
#To show the files that were modified in each commit (commit statistics)
git log --stat

#For a more detailed view of the changes
git log -p

#Remote repository
git log -p origin/master

#View commit details of a specific commit using commit hash
git show <b00b937>

#View specific file from remote branch
git show origin/master:file1.txt

#Create custom formats using the --pretty option
git log --pretty=format:"%h - %an, %ar : %s"

<<'###BLOCK-COMMENT'
%h: abbreviated commit hash
%an: author name
%ar: author date, relative
%s: subject (commit message)
###BLOCK-COMMENT


#Here are some useful placeholders:
<<'###BLOCK-COMMENT'
%H: full commit hash
%ad: author date
%cn: committer name
%ce: committer email
%cd: committer date
###BLOCK-COMMENT


#Visualizing the Commit Graph
#For a visual representation of the commit history, use the --graph option:
git log --graph --oneline --all

#Compare the repository state at different points:
git show <short commit hash>: .

##### Filtering Log by Date #####

#To see commits from the last week:
git log --since=1.week
git log --until=today

#You can also use specific dates:
git log --after="2026-04-01" --before="2026-04-30"

##### Searching Log for Specific Changes #####

#To search for commits with a specific word in the commit message:
git log --grep="function"

#For case-insensitive search use -i
git log --grep="function" -i

#Search for changes to a specific file:
git log -- script.js

#To search for changes that added or removed a specific line of code:
git log -S "console.log"
#It shows commits where the number of occurrences of "console.log" changed.

#Check when a specific file was last modified:
git log -1 --format="%H %an %ad %s" origin/master -- file2.txt

#Display only the last commit message from a particular branch
git --no-pager log -1 --format="%s" master 

#Combine options. To see detailed changes to script.js in the last week:
git log -p --since=1.week -- script.js

#Checking Who Modified a Specific Line
#This displays each line of the file along with the commit hash, author, and date of the last change to that line.
git blame README.md

#View Changes Between Commits 
git shortlog b00b937..HEAD

##### Generating Statistics from Log #####

#Identifying Contributors - To see a summary of the number of commits by author:
#This shows a list of authors, sorted by the number of commits, with the commit count next to each name.
git shortlog -s -n
#--------------------
#   5  Jane Doe
#	3  Mark White
#--------------------

#Identifying Contributors of individual file
git shortlog -sn -- README.md

#To see how many lines each author has added and removed:
git log --author="Jane Doe" --pretty=tformat: --numstat | awk '{ add += $1; subs += $2; loc += $1 - $2 } END { printf "Added lines: %s, Removed lines: %s, Total lines: %s\n", add, subs, loc }'


#To see which files have changed the most:
git log --pretty=format: --name-only | sort | uniq -c | sort -rg | head -10

#To see the total number of commits:
git rev-list --count HEAD

#To see the HEAD commit hash
git rev-parse HEAD

#Working with Remote References
#This shows all the branches and tags available on the remote repository.
git ls-remote origin
