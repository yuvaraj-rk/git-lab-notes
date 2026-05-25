##### Kodekloud Git #####

## Level-3 ##
#Day-1: Git Cherry Pick
#--------------------------
sshpass -p "Bl@kW" ssh -o StrictHostKeyChecking=no natasha@ststor01
cd /usr/src/kodekloudrepos/ecommerce/
ls
git config --global --add safe.directory /usr/src/kodekloudrepos/ecommerce
git log --oneline
git branch
git log --stat
sudo git switch master
git branch
git status

#Actual command required in this task to merge a commit from feature branch to master branch
sudo git cherry-pick 00139ee
ls
git status
git log --oneline
cat info.txt 
git config --global --add safe.directory /opt/ecommerce.git
sudo git push origin master
git status
git log --oneline
sudo git switch feature
cat info.txt 
sudo git switch master
ls
cat info.txt 

#Day-2: 
#--------------------------
sshpass -p "Max_pass123" ssh -o StrictHostKeyChecking=no max@ststor01
pwd
ls
cd story-blog/
git status
git branch
git log
git switch master
git log
git log --oneline
git switch story/fox-and-grapes
git log --oneline
#perform PR and merge PR to master branch in Gitea UI webpage
git switch master
git status
#Check content befor pull from remote repo
ls
git log --oneline
#Pull merged changes from remote repot
git pull origin master
#Confirm the merge status via log history
git log --oneline
#verify merged files present in master branch current directory
ls


#Day-3: Git hard reset
#--------------------------
sshpass -p "Bl@kW" ssh -o StrictHostKeyChecking=no natasha@ststor01
cd /usr/src/kodekloudrepos/cluster/
ls
git branch
git log --oneline
ls
git remote -v
git reset --hard HEAD~10
git log --oneline
ls
git push -f

#Day-4: Git Clean
#--------------------------
sshpass -p "Bl@kW" ssh -o StrictHostKeyChecking=no natasha@ststor01
cd /usr/src/kodekloudrepos/media
ls
git config --global --add safe.directory /usr/src/kodekloudrepos/media
git branch
git log --oneline
git status | head -n 20
git config --list
sudo git clean -f
ls
git log --stat
git status

#Day-5: Git Stash
#------------------------------
sshpass -p "Bl@kW" ssh -o StrictHostKeyChecking=no natasha@ststor01
cd /usr/src/kodekloudrepos/ecommerce
git branch
git stash list
git stash show -p stash@{1}
git status
git log --oneline
ls
cat info.txt 
git stash apply stash@{1}
git commit -m "Add welcome.txt file"
git remote -v
git push origin master
git log --oneline
git stash drop stash@{1}
git stash list
