#! /bin/bash

sudo apt-get install -f gdebi
if [ ! -f /usr/bin/vagrant ]; then
    wget -O /tmp/vagrant.deb https://releases.hashicorp.com/vagrant/2.0.0/vagrant_2.0.0_x86_64.deb
    sudo gedbi /tmp/vagrant.deb
fi

if [ ! -f /usr/bin/virtualbox ]; then
    wget -O /tmp/virtualbox.deb http://download.virtualbox.org/virtualbox/5.2.0/virtualbox-5.2_5.2.0-118431~Ubuntu~zesty_amd64.deb
    sudo gdebi /tmp/virtualbox.deb
fi
