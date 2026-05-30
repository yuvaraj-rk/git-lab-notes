mkdir git-branch-lab
cd git-branch-lab
git init
echo "# Git Branch Lab" > README.md\necho "This is my hub for multiversal Git branch experiments" >> README.md
git commit -m "Initial commit: Create the multiverse hub"
git status

#Create a new branch
git branch feature-dimension
#Switch the workspace content to new branch content
git checkout feature-dimension

#or
git checkout -b feature-dimension
git switch -c feature-dimension #From git version 2.23 and above (switch command is more intuitive and easy to understand)

echo "This is a powerful artifact from another dimension" > dimensional-artifact.txt
cat dimensional-artifact.txt
git add dimensional-artifact.txt
git commit -m "Create a powerful interdimensional artifact"
echo "#### Feature Dimension" >> README.md\necho "We've discovered a powerful artifact in this reality" >> README.md
cat README.md
git add README.md
git commit -m "Document the discovery of the artifact"
git diff master
git switch master
ls
git merge feature-dimension
cat dimensional-artifact.txt\ncat README.md
git branch --merged
#Only works if all changes in feature-dimension merged to master
git branch -d feature-dimension

#Disable Fast Forward merge on single commit
git merge --no-ff <branch-name>

#Disable globally for all branches
git config --global merge.ff false

#Force delete irrespective of the status of changes merge
git branch -D feature-dimension

#Will now have only master branch
git branch

#View all branches including remote branches
git branch -a

#Print the name of the current Branch
git branch --show-current

#Amending Your Last Commit
git commit --amend -m "Initial commit with corrected updates"

#View git commit logs as short summary
git log --oneline

#Set the default "push" branch to current checked out branch for remote repository
git config push.default current

#Cherry-picking Commits
######
#It's most effective for applying specific, isolated changes or fixes from one branch to another when a full merge is not desired or appropriate
######
#Only pick HEAD commit
git cherry-pick feature-branch

#Pick a specific commit using commit hash
git cherry-pick <commit_hash>
