##### Kodekloud Git #####

## Level-3 ##
#Day-1: Git Rebase
#--------------------------
sshpass -p "Bl@kW" ssh -o StrictHostKeyChecking=no natasha@ststor01

cd /usr/src/kodekloudrepos/official/
git switch master
git status
git log --oneline
git fetch origin
git log --oneline --graph
git branch
git switch feature
git rebase master
git log --oneline --graph
ls
git push origin feature --force
git log --oneline --graph

#Day-2: Manage Git Repositories
#--------------------------
sshpass -p "Max_pass123" ssh -o StrictHostKeyChecking=no max@ststor01
sudo -i
pwd
git clone https://3000-port-243utkgsot2ia47y.labs.kodekloud.com/max/story_blog.git
ls
cd story_blog/
ls -la /usr/security/
cp /usr/security/* .
ls
git status
git add .
git commit -m "add stories"
git log --oneline
git remote -v
git push origin main
git branch
git branch max_apps
git switch max_apps
ls /tmp/stories/
cp /tmp/stories/story-index-max.txt .
ls
vi story-index-max.txt 
git status
git log --oneline
git add .
git commit -m "typo fixed for Mooose"
git log --oneline
git remote -v
git push origin max_apps
git log --oneline

#Day-3: Resolve Git Merge Conflicts
#--------------------------
sshpass -p "Max_pass123" ssh -o StrictHostKeyChecking=no max@ststor01
cd story-blog/
git branch
git remote -v
git status
git config --global user.name
git log --oneline
git push origin master
git pull origin master
git status
git log --oneline --graph
ls
cat story-index.txt 
vi story-index.txt 
git add story-index.txt 
git commit -m "Resolve merge conflict in story-index.txt file"
git status
git log --oneline --graph
git push origin master
git log --oneline --graph

#Day-4: Git Hook
#--------------------------
sshpass -p "Bl@kW" ssh -o StrictHostKeyChecking=no natasha@ststor01

cd /usr/src/kodekloudrepos/cluster/
ls
git branch
git status
git switch master
git branch
git log --oneline --graph
git merge feature
git log --oneline --graph
ls /opt/cluster.git/hooks/
ls /opt/cluster.git/hooks/*push*
cat /opt/cluster.git/hooks/post-update.sample
date +%F
git rev-parse HEAD
git log --oneline --graph
cat .git/HEAD 
cd /opt/cluster.git/hooks/
ls
vi post-update
cat post-update
<<'###BLOCK-COMMENT'

#!/bin/bash

for refname in "$@"; do
  if [ "$refname" = "refs/heads/master" ]; then
    today=$(date +%F) 
    tag_name="release-${today}" # relase-2025-11-21

    newrev=$(git rev-parse "$refname")

    git tag -f "$tag_name" "$newrev"
  fi
done

#Standard post-update behavior so clients work correctly
exec git update-server-info
###BLOCK-COMMENT
cd /usr/src/kodekloudrepos/cluster/
git remote -v
git push origin master
cd /opt/cluster.git/hooks/
ls post-update -la
chmod +x post-update
ls post-update -la
git log --oneline
git push origin master
cd /usr/src/kodekloudrepos/cluster/
git log --oneline
ls
cat feature.txt 
echo "This is a new feature." > feature.txt 
git add .
git commit -m "Update feature"
git push origin master
cd /opt/cluster.git/hooks/
git tag

#Day-5: Git Setup from Scratch
#------------------------------
sshpass -p "Bl@kW" ssh -o StrictHostKeyChecking=no natasha@ststor01

yum update
yum install git -y
git -v
git config --global user.name "kkloud"
git config --global user.name
git config --global user.email "kkloud@kodekloud.com"
git config --global user.email
git init --bare /opt/beta.git
cd /opt/beta.git
cat /tmp/update 
cp /tmp/update ./hooks/
ls ./hooks/
git clone /opt/beta.git/ /usr/src/kodekloudrepos/
cd /usr/src/kodekloudrepos/beta/
ls
git branch
git config -l
git switch -c xfusioncorp_beta
cp /tmp/readme.md .
ls
git add .
git commit -m "Initial commit"
git branch
git log --oneline --graph
git remote -v
git push -u origin xfusioncorp_beta
git log --oneline --graph
git switch -c master
git push -u origin master
#push to master branch rejected due to hook configuration
ls
git status
git branch --unset-upstream
git push -u origin master
git log --oneline --graph
git remote -v
cat /tmp/update
<<'###BLOCK-COMMENT'
#!/bin/sh
if [ "$1" == refs/heads/master ];
then
  echo "Manual pushes to the master branch is restricted!!"
  exit 1
fi
###BLOCK-COMMENT
