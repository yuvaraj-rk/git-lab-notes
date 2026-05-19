#Change commits, commit messages, combine commits etc in the project
#Recommended: to perform only in local repository for education purposes or project cleanup locally before pushing the changes to shared remote repository
#Changes in remote repository is not recommended and in needed case do so after the coordination with the team

#Rebase from the root(initial commit)
git rebase -i --root

#Rebase from latest 3 commits
# -i in ineractive mode
git rebase -i HEAD~3

#Rebase starting from specific commit to the latest(HEAD)
git rebase -i <commit hash>

#Do use git log before and after to ensure the rebase performed as expected
git log --oneline


#### Useful rebase commands to use in interactive rebase ####
#In the interactive rebase screen, you'll see a list of commits with actions. The common actions are:

#	pick - use the commit as is
#	reword or r - use the commit but change its message
#	squash or s - combine this commit with the previous one
#	fixup or f - like squash, but discard this commit's message
