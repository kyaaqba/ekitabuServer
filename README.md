# eKitabu Web Server - Ubuntu 18.04
### Overview
An eKitabu webserver packer tempate to create a web server contains all required packages and content to create boxes for vagrant.

### Prerequiset
#### Install Packer
Use This [Link](https://www.packer.io/downloads/) to download and install Packer
##### About Packer
HashiCorp Packer automates the creation of any type of machine image. It embraces modern configuration management by encouraging you to use automated scripts to install and configure the software within your Packer-made images. Packer brings machine images into the modern age, unlocking untapped potential and opening new opportunities.
[more info](https://www.packer.io/)
#### Install Vagrant
Use This [Link](https://www.vagrantup.com/downloads) to download and install vagrant
##### About Vagrant
HashiCorp Vagrant provides the same, easy workflow regardless of your role as a developer, operator, or designer. It leverages a declarative configuration file which describes all your software requirements, packages, operating system configuration, users, and more.
[more info](https://www.vagrantup.com/)
### USAGE
To create VirtualBox virtual machine.
```sh
    packer build ubuntu.json
```
To create Hyper-V virtual machine.
```sh
    packer build ubuntu-hyperv.json
```

### Ubuntu 18.04.4
Tested with [packer][] 1.5.4, [Vagrant][] 2.2.7, [VirtualBox][] 6.0.18

[Packer]: https://packer.io/
[Vagrant]: https://www.vagrantup.com/
[VirtualBox]: https://www.virtualbox.org/
