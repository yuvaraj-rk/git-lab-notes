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

#Day-5: Git Setup from Scratch
#------------------------------
sshpass -p "Bl@kW" ssh -o StrictHostKeyChecking=no natasha@ststor01
