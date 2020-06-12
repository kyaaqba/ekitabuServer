echo Make a new directory. (press any key to continue)
PAUSE 
mkdir eKitabuRepos
echo Navigate to the directory (press any key to continue)
PAUSE 
cd eKitabuRepos 
echo Clone this Repository. (press any key to continue)
PAUSE
git clone https://github.com/kyaaqba/ekitabuServer.git 
echo Navigate to cloned repository folder (press any key to continue)
PAUSE
cd ekitabuServer 
echo To create vagrant box virtual machine template file. (press any key to continue)
PAUSE
packer build ubuntu.json 
echo Navigate to box/virtualbox folder (this step will take several minutes) (press any key to continue)
PAUSE
cd box\virtualbox\ 
echo Use Vagrant to create a Virtual Machine (--name is to give the output a name, and the name could be modified)(press any key to continue)
PAUSE
vagrant box add --name "webserver" .\ubuntu-18.04-0.1.box 
echo Use Vagrant to initialize the Virtual Machine(press any key to continue)
PAUSE
vagrant init webserver
echo Start up the virtual machine(press any key to continue)
PAUSE
vagrant up 
echo Access the virtual machine through ssh(press any key to continue)
PAUSE
vagrant ssh
 