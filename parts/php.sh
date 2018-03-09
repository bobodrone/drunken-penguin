#! /bin/bash

sudo apt-get -y install php-cli php-xml php-zip php-json php-mcrypt php-redis php-xdebug php-soap php-mbstring php-curl php-mysql php-codesniffer composer php-gd

# install pingur
cd
git clone git@github.com:nodeone/pingur.git
cd pingur
composer install
app/pingur
