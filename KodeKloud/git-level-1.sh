Kodekloud Git:

## Level-1 ##
#Day-1:
ssh natasha@ststor01
Bl@kW
sudo yum install git -y
git --version
sudo git init --bare /opt/cluster.git
ls -l /opt/cluster.git/

---------------
#Why use a Bare Repository?
#In a typical workflow, you don't edit files directly inside /opt/cluster.git. Instead, you clone it to your local machine, work there, and then push your changes back to this central location:
#git clone /opt/cluster.git ~/my_work
---------------
#Day-2:
ssh natasha@ststor01
Bl@kW
cd /usr/src/kodekloudrepos
git clone /opt/cluster.git

#---------------
#Day-4:
#-------
scp /tmp/index.html natasha@ststor01:/home/natasha/
ssh natasha@ststor01
Bl@kW
sudo mv /home/natasha/index.html /usr/src/kodekloudrepos/media
ls /usr/src/kodekloudrepos/media
cd /usr/src/kodekloudrepos/media
git config --global --add safe.directory /usr/src/kodekloudrepos/media
sudo git status
sudo git add .
sudo git status
sudo git commit -m "Add index.html file to the repository"
sudo git push
git log --oneline´

#---------------
#Day-5:
#-------
[natasha@ststor01 blog]$ ssh natasha@ststor01
Bl@kW
[natasha@ststor01 blog]$ git config --global --add safe.directory /usr/src/kodekloudrepos/blog
[natasha@ststor01 blog]$ cd /usr/src/kodekloudrepos/blog
[natasha@ststor01 blog]$ git branch
  master
* xfusioncorp_blog
>>current worktree is xfusioncorp_blog which is the one to be deleted.
[natasha@ststor01 blog]$ sudo git checkout master
Switched to branch 'master'
Your branch is up to date with 'origin/master'.
[natasha@ststor01 blog]$ git branch
* master
  xfusioncorp_blog
[natasha@ststor01 blog]$ sudo git branch -d xfusioncorp_blog
Deleted branch xfusioncorp_blog (was 4665e5b).
[natasha@ststor01 blog]$ git branch
* master

#Certification Test:
ssh sarah@ststor01
S3cure321
[sarah@ststor01 ~]$ ls /home/sarah/story-blog-t1q5
lion-and-mouse-t1q5.txt
[sarah@ststor01 ~]$ git --version
git version 2.52.0
[sarah@ststor01 ~]$ cd /home/sarah/story-blog-t1q5
[sarah@ststor01 story-blog-t1q5]$ git status
On branch master
No commits yet
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        lion-and-mouse-t1q5.txt

nothing added to commit but untracked files present (use "git add" to track)
[sarah@ststor01 story-blog-t1q5]$ git add lion-and-mouse-t1q5.txt 
[sarah@ststor01 story-blog-t1q5]$ git status
On branch master
No commits yet
Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
        new file:   lion-and-mouse-t1q5.txt

#Task-2:
[sarah@ststor01 story-blog-t1q5]$ cd /home/sarah/story-blog-t1q9
[sarah@ststor01 story-blog-t1q9]$ ls
lion-and-mouse-t1q9.txt  notes-t1q9.txt
[sarah@ststor01 story-blog-t1q9]$ ls -la
total 24
drwxr-xr-x 3 sarah sarah 4096 Apr  7 10:49 .
drwx------ 1 sarah sarah 4096 Apr  7 10:49 ..
drwxr-xr-x 7 sarah sarah 4096 Apr  7 10:49 .git
-rw-r--r-- 1 sarah sarah   32 Apr  7 10:49 lion-and-mouse-t1q9.txt
-rw-r--r-- 1 sarah sarah   21 Apr  7 10:49 notes-t1q9.txt
[sarah@ststor01 story-blog-t1q9]$ echo notes-t1q9.txt > .gitignore
[sarah@ststor01 story-blog-t1q9]$ cat .gitignore 
notes-t1q9.txt
[sarah@ststor01 story-blog-t1q9]$ git status
On branch master
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        .gitignore

nothing added to commit but untracked files present (use "git add" to track)
[sarah@ststor01 story-blog-t1q9]$ git log
commit 845c81b5edc58f5135ed4986afd8764e95519a88 (HEAD -> master)
Author: Sarah <sarah@example.com>
Date:   Tue Apr 7 10:49:31 2026 +0000

    Added the lion and mouse story
[sarah@ststor01 story-blog-t1q9]$ git log --oneline
845c81b (HEAD -> master) Added the lion and mouse story
[sarah@ststor01 story-blog-t1q9]$ git log notes-t1q9.txt 
[sarah@ststor01 story-blog-t1q9]$ git add .
[sarah@ststor01 story-blog-t1q9]$ git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   .gitignore

[sarah@ststor01 story-blog-t1q9]$ git commit -m "Add notes-t1q9.txt to gitignore to make sure this file is not tracked"
[master ef606b0] Add notes-t1q9.txt to gitignore to make sure this file is not tracked
 1 file changed, 1 insertion(+)
 create mode 100644 .gitignore
[sarah@ststor01 story-blog-t1q9]$ git log --oneline
ef606b0 (HEAD -> master) Add notes-t1q9.txt to gitignore to make sure this file is not tracked
845c81b Added the lion and mouse story


#Task-3:
[sarah@ststor01 story-blog-t1q9]$ cd ..
[sarah@ststor01 ~]$ ls
story-blog-t1q1  story-blog-t1q10  story-blog-t1q5  story-blog-t1q6  story-blog-t1q8  story-blog-t1q9
[sarah@ststor01 ~]$ pwd
/home/sarah
[sarah@ststor01 ~]$ mkdir story-blog-t1q4
[sarah@ststor01 ~]$ cd story-blog-t1q4
[sarah@ststor01 story-blog-t1q4]$ ls
[sarah@ststor01 story-blog-t1q4]$ git init
hint: Using 'master' as the name for the initial branch. This default branch name
hint: will change to "main" in Git 3.0. To configure the initial branch name
hint: to use in all of your new repositories, which will suppress this warning,
hint: call:
hint:
hint:   git config --global init.defaultBranch <name>
hint:
hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
hint: 'development'. The just-created branch can be renamed via this command:
hint:
hint:   git branch -m <name>
hint:
hint: Disable this message with "git config set advice.defaultBranchName false"
Initialized empty Git repository in /home/sarah/story-blog-t1q4/.git/
[sarah@ststor01 story-blog-t1q4]$ git status
On branch master

No commits yet

nothing to commit (create/copy files and use "git add" to track)
[sarah@ststor01 story-blog-t1q4]$ echo "A Lion lay asleep in the forest" > lion-and-mouse-t1q4.txt
[sarah@ststor01 story-blog-t1q4]$ cat lion-and-mouse-t1q4.txt 
A Lion lay asleep in the forest
[sarah@ststor01 story-blog-t1q4]$ git add .
[sarah@ststor01 story-blog-t1q4]$ git config --global user.email "sarah@example.com"
[sarah@ststor01 story-blog-t1q4]$ git config --global user.name "Sarah"
[sarah@ststor01 story-blog-t1q4]$ git commit -m "Added a file lion-and-mouse-t1q4.txt"
[master (root-commit) 6b10282] Added a file lion-and-mouse-t1q4.txt
 1 file changed, 1 insertion(+)
 create mode 100644 lion-and-mouse-t1q4.txt
[sarah@ststor01 story-blog-t1q4]$ git log --oneline
6b10282 (HEAD -> master) Added a file lion-and-mouse-t1q4.txt
[sarah@ststor01 story-blog-t1q4]$ ls
lion-and-mouse-t1q4.txt

#Task-4:
[sarah@ststor01 story-blog-t1q4]$ cd /usr/src/kodekloudrepos/blog-t2q6
[sarah@ststor01 blog-t2q6]$ ls
lion-and-mouse.txt
[sarah@ststor01 blog-t2q6]$ git status
On branch master
Your branch is up to date with 'origin/master'.
nothing to commit, working tree clean
[sarah@ststor01 blog-t2q6]$ git log --oneline
ac2a0ad (HEAD -> master, origin/master) initial commit
[sarah@ststor01 blog-t2q6]$ ls
lion-and-mouse.txt
[sarah@ststor01 blog-t2q6]$ grep "LIOON" lion-and-mouse.txt 
      THE LIOON AND THE MOUSE
[sarah@ststor01 blog-t2q6]$ grep -n "LIOON" lion-and-mouse.txt 
2:      THE LIOON AND THE MOUSE
[sarah@ststor01 blog-t2q6]$ vi lion-and-mouse.txt 
[sarah@ststor01 blog-t2q6]$ grep -n "LIOON" lion-and-mouse.txt 
[sarah@ststor01 blog-t2q6]$ git add .
[sarah@ststor01 blog-t2q6]$ git commit -m "Fix typo in story title"
[master 11c4f70] Fix typo in story title
 1 file changed, 2 insertions(+), 2 deletions(-)
[sarah@ststor01 blog-t2q6]$ git log --oneline
11c4f70 (HEAD -> master) Fix typo in story title
ac2a0ad (origin/master) initial commit

#Task-5:
[sarah@ststor01 blog-t2q6]$ cd ..
[sarah@ststor01 kodekloudrepos]$ cd blog-t2q5
[sarah@ststor01 blog-t2q5]$ ls
info-t2q5.txt
[sarah@ststor01 blog-t2q5]$ git branch
* dev
  master
[sarah@ststor01 blog-t2q5]$ git checkout master
Switched to branch 'master'
Your branch is up to date with 'origin/master'.
[sarah@ststor01 blog-t2q5]$ git branch
  dev
* master
