#!/bin/bash

sudo mkdir /var/www/html/epub_content
sudo git clone https://kyaaqba:5d88e880751cf53edaad5c280f925eef71db15a0@github.com/kyaaqba/eKitabuContent.git
sudo unzip eKitabuContent/Content.zip -d /var/www/html/epub_content