# eKitabu Web Server - Ubuntu 18.04
==============
### Overview
An eKitabu webserver packer tempate to create a web server contains all required packages and content to create boxes for vagrant.

### Prerequiset
## Install Packer
## Install Vagrant
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
