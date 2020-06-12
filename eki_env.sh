#!/bin/bash
echo "$(tput setaf 1) $(tput setaf 1) Make a new directory."
read -r -s -p $'Press enter to continue...'
mkdir eKitabuRepos
echo "$(tput setaf 1) Navigate to the directory"
read -r -s -p $'Press enter to continue...'
cd eKitabuRepos
echo "$(tput setaf 1) Clone this Repository."
read -r -s -p $'Press enter to continue...'
git clone https://github.com/kyaaqba/ekitabuServer.git
echo "$(tput setaf 1) Navigate to cloned repository folder"
read -r -s -p $'Press enter to continue...'
cd ekitabuServer
echo "$(tput setaf 1) To create vagrant box virtual machine template file."
read -r -s -p $'Press enter to continue...'
packer build ubuntu.json
echo "$(tput setaf 1) Navigate to box/virtualbox folder (this step will take several minutes)"
read -r -s -p $'Press enter to continue...'  
cd box\virtualbox\
echo "$(tput setaf 1) Use Vagrant to create a Virtual Machine (--name is to give the output a name, and the name could be modified)"
read -r -s -p $'Press enter to continue...'
vagrant box add --name "webserver" .\ubuntu-18.04-0.1.box
echo "$(tput setaf 1) Use Vagrant to initialize the Virtual Machine"
read -r -s -p $'Press enter to continue...'
vagrant init webserver
echo "$(tput setaf 1) Start up the virtual machine"
read -r -s -p $'Press enter to continue...'
vagrant up
echo "$(tput setaf 1) Access the virtual machine through ssh"
read -r -s -p $'Press enter to continue...'
vagrant ssh 