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


#Day-3: 
#--------------------------
sshpass -p "Bl@kW" ssh -o StrictHostKeyChecking=no natasha@ststor01

#Day-4: 
#--------------------------
sshpass -p "Bl@kW" ssh -o StrictHostKeyChecking=no natasha@ststor01


#Day-5: 
#------------------------------
sshpass -p "Bl@kW" ssh -o StrictHostKeyChecking=no natasha@ststor01
