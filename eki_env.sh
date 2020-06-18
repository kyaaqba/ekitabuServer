#!/bin/bash
echo 'Update apt-get'
sudo apt-get Update
sudo apt-get Upgrade
echo 'Install packer'
export VER="1.5.6"
wget https://releases.hashicorp.com/packer/${VER}/packer_${VER}_linux_amd64.zip
sudo apt install unzip
unzip packer_${VER}_linux_amd64.zip
sudo mv packer /usr/local/bin
echo 'Install vagrant\n'
sudo apt-get install vagrant
echo 'Install virtualbox\n'
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian bionic contrib"
sudo apt update
sudo apt install virtualbox-6.0
echo "$(tput setaf 1) $(tput setaf 1) Make a new directory. \n"
read -r -s -p $'Press enter to continue...\n'
mkdir eKitabuRepos
echo "$(tput setaf 1) Navigate to the directory \n"
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