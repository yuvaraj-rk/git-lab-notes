#!/bin/bash

###### Configuring Git Timeout Settings ######

#Setting HTTP Timeout Value
git config --global http.timeout 300
#To verify these settings:
git config --global http.timeout

#Configuring SSH Connection Timeout
git config --global core.sshCommand "ssh -o ConnectTimeout=30"
#To verify these settings:
git config --global core.sshCommand


#Configuring Low Speed Limits
git config --global http.lowSpeedLimit 1000
git config --global http.lowSpeedTime 10
#These commands configure Git to abort the connection if the transfer rate falls below 1000 bytes per second for 10 seconds. 

#To verify these settings:
git config --global http.lowSpeedLimit
git config --global http.lowSpeedTime


######### Git Connection Timeouts #########
#Using Git with Verbose Output
GIT_CURL_VERBOSE=1 git fetch

#To check if proxy settings are enabled:
git config --global http.proxy
git config --global https.proxy


#Switching Between HTTPS and SSH
git remote -v
#---------
#origin  https://github.com/git/git.git (fetch)
#origin  https://github.com/git/git.git (push)


git remote set-url origin git@github.com:git/git.git
git remote -v
#---------
#origin  git@github.com:git/git.git (fetch)
#origin  git@github.com:git/git.git (push)

#Testing With Reduced SSL Verification
# Only use this for testing, do not leave SSL verification disabled
git config --global http.sslVerify false

#To Verify the setting
git config --global http.sslVerify
#------
#false