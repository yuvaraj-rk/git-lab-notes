#!/bin/bash

#List all git configurations
git config --list

git config --global user.name "John Doe"
git config --global user.email "John.Doe@gmail.com"

git config --global user.name
git config --global user.email

#Set color settings
git config --global color.ui auto
git config --global color.ui

#Set editor for commit messages
git config --global core.editor nano
git config --global core.editor

#Set Line Endings with only LF on commit (ignoring CR)
git config --global core.autocrlf input
git config --global core.autocrlf

#To Set the alias
git config --global alias.st status
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

#To View the alias 
git config --global alias.st
git config --global alias.lg

#Test the alias
git st
git lg

#Set configuration local for current git repository setup
git config user.name "Lab User"
#Prints local user name: Lab User
git config user.name

#Prints global user name: John Doe
git config --global user.name

#To view & edit the config file in text editor
#Local Config
git config --edit

#Print raw config file in the terminal
cat ./.git/config

#Global Config
git config --global --edit

#Enable Auto Correct Option (number represents 1/10 of a second wait by git & then proceed to execute the assumed command)
git config --global help.autocorrect 1

#To set the preferred git text editor to vim
git config --global core.editor "vim"
