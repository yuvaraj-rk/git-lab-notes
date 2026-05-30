#!/bin/bash

####### Installing a Git Server #######
### Installing Git ###
sudo apt-get update
sudo apt-get install git

### Configuring the Git User ###
sudo useradd labex-git
sudo passwd labex-git
pwd
sudo mkdir /home/labex-git
sudo chown -R labex-git:labex-git /home/labex-git

### Generating SSH Keys ###
# Generate an SSH key pair
ssh-keygen -t rsa -C "labex@labex.io"

cat ~/.ssh/id_rsa.pub | ssh labex-git@localhost 'mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys'

### Creating a Remote Repository ###
# Switch to the Git user
su labex-git

mkdir -p /home/labex-git/project.git
cd /home/labex-git/project.git
git init --bare
# Exit from Git user
exit

### Setting Up the Local Repository ###
# Create a directory for your project
mkdir -p /home/labex/project/labex_project
cd /home/labex/project/labex_project

# Initialize a Git repository
git init

# Set your Git username
git config --global user.name "labex"

# Set your Git email
git config --global user.email "labex@labex.io"

# Create a directory for your project
mkdir -p /home/labex/project/labex_project
cd /home/labex/project/labex_project

# Initialize a Git repository
git init

# Set your Git username
git config --global user.name "labex"

# Set your Git email
git config --global user.email "labex@labex.io"

# Create a test document
echo "I am Labex Readme Doc" > readme.md

### Committing and Pushing Changes ###
# Add all changes to staging
git add .

# Commit the changes
git commit -m "Initial commit"

# Add remote repository
git remote add origin labex-git@localhost:/home/labex-git/project.git

git push origin master


### Verifying the Setup ###
# Navigate to the cloning directory
cd /home/labex/project

#Clone the repository
git clone labex-git@localhost:/home/labex-git/project.git

#Check readme file
cd ./poject
ls
