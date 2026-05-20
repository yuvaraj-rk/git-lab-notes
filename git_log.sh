#!/bin/bash

##### Basic Log Usage #####
#Display git commit history with latest at the top
git log

#only display each commit in a single line with short commit hash & commit message
git log --oneline


##### Formatting Log Output #####
#To show the files that were modified in each commit
git log --stat

#For a more detailed view of the changes
git log -p

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

#Combine options. To see detailed changes to script.js in the last week:
git log -p --since=1.week -- script.js


##### Generating Statistics from Log #####

#To see a summary of the number of commits by author:
#This shows a list of authors, sorted by the number of commits, with the commit count next to each name.
git shortlog -s -n
#--------------------
#   5  Jane Doe
#	3  Mark White
#--------------------

#To see how many lines each author has added and removed:
git log --author="Jane Doe" --pretty=tformat: --numstat | awk '{ add += $1; subs += $2; loc += $1 - $2 } END { printf "Added lines: %s, Removed lines: %s, Total lines: %s\n", add, subs, loc }'


#To see which files have changed the most:
git log --pretty=format: --name-only | sort | uniq -c | sort -rg | head -10

#To see the total number of commits:
git rev-list --count HEAD