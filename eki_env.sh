#!/bin/bash
echo "      _  ___ _        _            __          __  _"                               
echo "     | |/ (_) |      | |           \ \        / / | |"                                
echo "  ___| ' / _| |_ __ _| |__  _   _   \ \  /\  / /__| |__  ___  ___ _ ____   _____ _ __" 
echo " / _ \  < | | __/ _  |  _ \| | | |   \ \/  \/ / _ \  _ \/ __|/ _ \  __\ \ / / _ \  __|"
echo "|  __/ . \| | || (_| | |_) | |_| |    \  /\  /  __/ |_) \__ \  __/ |   \ V /  __/ |   "
echo " \___|_|\_\_|\__\__,_|_.__/ \__,_|     \/  \/ \___|_.__/|___/\___|_|    \_/ \___|_| "
echo ""
echo $"Update apt-get\n"
sudo apt-get -y update
sudo apt-get -y upgrade
echo $"Install packer\n"
export VER="1.5.6"
wget https://releases.hashicorp.com/packer/${VER}/packer_${VER}_linux_amd64.zip
sudo apt install -y unzip
unzip packer_${VER}_linux_amd64.zip
sudo mv packer /usr/local/bin
echo $'Install vagrant\n'
sudo apt-get install -y vagrant
echo $'Install virtualbox\n'
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian bionic contrib"
sudo apt -y update
sudo apt install -y virtualbox-6.0
echo $"$(tput setaf 1) $(tput setaf 1) Make a new directory. \n"
read -r -s -p $'Press enter to continue...\n'
mkdir eKitabuRepos
echo $"$(tput setaf 1) Navigate to the directory \n"
read -r -s -p $'Press enter to continue...\n'
cd eKitabuRepos
echo $"$(tput setaf 1) Clone this Repository.\n"
read -r -s -p $'Press enter to continue...\n'
git clone https://github.com/kyaaqba/ekitabuServer.git
echo $"$(tput setaf 1) Navigate to cloned repository folder\n"
read -r -s -p $'Press enter to continue...\n'
cd ekitabuServer
echo $"$(tput setaf 1) To create vagrant box virtual machine template file.\n"
read -r -s -p $'Press enter to continue...\n'
packer build ubuntu.json
echo $"$(tput setaf 1) Navigate to box/virtualbox folder (this step will take several minutes)\n"
read -r -s -p $'Press enter to continue...\n'  
cd box\virtualbox\
echo $"$(tput setaf 1) Use Vagrant to create a Virtual Machine (--name is to give the output a name, and the name could be modified)\n"
read -r -s -p $'Press enter to continue...\n'
vagrant box add --name "webserver" .\ubuntu-18.04-0.1.box
echo $"$(tput setaf 1) Use Vagrant to initialize the Virtual Machine\n"
read -r -s -p $'Press enter to continue...\n'
vagrant init webserver
echo $"$(tput setaf 1) Start up the virtual machine\n"
read -r -s -p $'Press enter to continue...\n'
vagrant up
echo $"$(tput setaf 1) Access the virtual machine through ssh\n"
read -r -s -p $'Press enter to continue...\n'
vagrant ssh 