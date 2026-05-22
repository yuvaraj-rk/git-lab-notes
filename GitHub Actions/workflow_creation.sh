git clone https://github.com/yuvaraj-rk/github-actions-demo.git
cd github-actions-demo
touch .github/workflows/hello-world.yml
ls -R .github
git status
git add .github/workflows/hello-world.yml
git commit -m "Add hello world workflow"
git push
cat .github/workflows/hello-world.yml
<<'###BLOCK-COMMENT'
name: Hello World Workflow
on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Say Hello
        run: echo "Hello, World!"
###BLOCK-COMMENT

<<'###BLOCK-COMMENT'
labex:project/ $ git clone https://github.com/yuvaraj-rk/github-actions-demo.git
Cloning into 'github-actions-demo'...
remote: Enumerating objects: 8, done.
remote: Counting objects: 100% (8/8), done.
remote: Compressing objects: 100% (4/4), done.
remote: Total 8 (delta 0), reused 5 (delta 0), pack-reused 0 (from 0)
Receiving objects: 100% (8/8), done.
labex:project/ $ cd github-actions-demo 
labex:github-actions-demo/ (main) $ ls -R .github
.github:
workflows

.github/workflows:
main.yml
labex:github-actions-demo/ (main) $ touch .github/workflows/hello-world.yml
labex:github-actions-demo/ (main*) $ ls -R .github                          
.github:
workflows

.github/workflows:
hello-world.yml  main.yml
labex:github-actions-demo/ (main*) $ cat .github/workflows/hello-world.yml
name: Hello World Workflow                                                                                                                                                                            
labex:github-actions-demo/ (main*) $ git status
On branch main
Your branch is up to date with 'origin/main'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        .github/workflows/hello-world.yml

nothing added to commit but untracked files present (use "git add" to track)
labex:github-actions-demo/ (main*) $ git add .github/workflows/hello-world.yml
labex:github-actions-demo/ (main*) $ git commit -m "Add hello world workflow"
[main f5846d5] Add hello world workflow
 1 file changed, 9 insertions(+)
 create mode 100644 .github/workflows/hello-world.yml
labex:github-actions-demo/ (main) $ git push
Enumerating objects: 8, done.
Counting objects: 100% (8/8), done.
Delta compression using up to 4 threads
Compressing objects: 100% (4/4), done.
Writing objects: 100% (5/5), 530 bytes | 530.00 KiB/s, done.
Total 5 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/yuvaraj-rk/github-actions-demo.git
   80deeb4..f5846d5  main -> main
labex:github-actions-demo/ (main) $ cat .github/workflows/hello-world.yml 
name: Hello World Workflow
on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Say Hello
        run: echo "Hello, World!"
labex:github-actions-demo/ (main) $ 
###BLOCK-COMMENT