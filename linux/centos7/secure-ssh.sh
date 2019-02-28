#!/bin/bash
#SECURE-SSH.SH
#AUTHOR NICKRANGER44
#Creates a new ssh user called
#Adds a public key to that users authorized keys file
#Removes roots ability to ssh in

sudo useradd $1
sudo mkdir /home/$1/.ssh
ssh-keygen -t rsa -C $1
sudo cp ~/.ssh/id_rsa.pub /home/nick/sys265-scripts/linux/public-keys/$1.pub
sudo cp /home/nick/sys265-scripts/linux/public-keys/$1.pub /home/$1/.ssh/authorized_keys
sudo chmod 700 /home/$1/.ssh
sudo chmod 600 /home/$1/.ssh/authorized_keys
sudo chown -R $1:$1 /home/$1/.ssh

