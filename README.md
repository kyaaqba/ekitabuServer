# eKitabu Web Server - Ubuntu 18.04
### Overview
An eKitabu webserver packer tempate to create a web server contains all required packages and content to create boxes for vagrant.

### Prerequiset
#### Install Packer
Use this [Link](https://www.packer.io/downloads/) to download and install Packer
##### About Packer
HashiCorp Packer automates the creation of any type of machine image. It embraces modern configuration management by encouraging you to use automated scripts to install and configure the software within your Packer-made images. Packer brings machine images into the modern age, unlocking untapped potential and opening new opportunities.
[more info](https://www.packer.io/)
#### Install Vagrant
Use this [Link](https://www.vagrantup.com/downloads) to download and install vagrant
##### About Vagrant
HashiCorp Vagrant provides the same, easy workflow regardless of your role as a developer, operator, or designer. It leverages a declarative configuration file which describes all your software requirements, packages, operating system configuration, users, and more.
[more info](https://www.vagrantup.com/)
### USAGE
After installing previous packages, Open a terminal window (Windows: Power Shell) and follow these steps:
##### Make a new directory.
```sh
    mkdir eKitabuRepos
```
##### Navigate to the directory
```sh
    cd eKitabuRepos
```
##### Clone this Repository.
```sh
    git clone https://github.com/kyaaqba/ekitabuServer.git
```
##### Navigate to cloned repository folder
```sh
    cd ekitabuServer
```
##### To create vagrant box virtual machine template file.
```sh
    packer build ubuntu.json
```
##### Navigate to box/virtualbox folder (this step will take several minutes)
```sh
    packer build ubuntu.json
```
##### Use Vagrant to create a Virtual Machine (--name is to give the output a name, and the name could be modified)
```sh
     vagrant box add --name "webserver" .\ubuntu-18.04-0.1.box
```
##### Use Vagrant to initialize the Virtual Machine
```sh
     vagrant init webserver
```
##### Start up the virtual machine
```sh
     vagrant up
```
##### Access the virtual machine through ssh
```sh
      vagrant ssh
```
