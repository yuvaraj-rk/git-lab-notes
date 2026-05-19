Kodekloud Git:

## Level-2 ##
#Day-1: Git Install and Create Repository
#--------------------------
sudo yum install git -y
git --version
cd /opt/
ls
sudo mkdir blog.git
ls
cd blog.git/
sudo git init
ls -lah
cd blog.git/
git status

#Day-2: Git Create Branches
#--------------------------
sshpass -p "Bl@kW" ssh -o StrictHostKeyChecking=no natasha@ststor01
cd /usr/src/kodekloudrepos/demo
git branch
git switch master
git branch xfusioncorp_demo
git branch
git switch xfusioncorp_demo
git status
git log --oneline

#Day-3: Git Merge Branches
#--------------------------
sshpass -p "Bl@kW" ssh -o StrictHostKeyChecking=no natasha@ststor01
sudo -i
git switch -c datacenter
git branch
ls
cp /tmp/index.html .
ls
git add index.html
git commit -m "Add new index.html file copied from /tmp"
git status
git log --oneline
git switch master
git branch
git merge datacenter
git log --oneline
git push -u origin master
git log --oneline
git switch datacenter
git push -u origin datacenter
git log --oneline

#Day-4: Git Manage Remotes
#--------------------------
sshpass -p "Bl@kW" ssh -o StrictHostKeyChecking=no natasha@ststor01

cd /usr/src/kodekloudrepos/beta
git config --global --add safe.directory /usr/src/kodekloudrepos/beta
git remote -v
sudo git remote add dev_beta /opt/xfusioncorp_beta.git
git remote -v
ls /tmp/
sudo cp /tmp/index.html .
ls
sudo git add .
sudo git commit -m "Add new file index.html"
git log --oneline
git config --global --add safe.directory /opt/xfusioncorp_beta.git
sudo git push dev_beta master
git log --oneline
