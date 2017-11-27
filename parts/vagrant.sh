#! /bin/bash
set -e
sudo apt-get install -y gdebi
if [ ! -f /usr/bin/vagrant ]; then
    wget -O /tmp/vagrant.deb https://releases.hashicorp.com/vagrant/2.0.1/vagrant_2.0.1_x86_64.deb
    sudo gdebi -n /tmp/vagrant.deb
    vagrant plugin install vagrant-hostsupdater

# Run this first: 
#sudo visudo -f /etc/sudoers.d/vagrant_hostsupdater

# Then add this lines below to allow passwordless startup of Vagrant with vagrant-hostsupdater.
#Cmnd_Alias VAGRANT_HOSTS_ADD = /bin/sh -c 'echo "*" >> /etc/hosts'
#Cmnd_Alias VAGRANT_HOSTS_REMOVE = /usr/bin/env sed -i -e /*/ d /etc/hosts
#%sudo ALL=(root) NOPASSWD: VAGRANT_HOSTS_ADD, VAGRANT_HOSTS_REMOVE

fi

sudo apt install nfs-kernel-server -y

if [ ! -f /usr/bin/virtualbox ]; then
    wget -O /tmp/virtualbox.deb http://download.virtualbox.org/virtualbox/5.2.0/virtualbox-5.2_5.2.0-118431~Ubuntu~zesty_amd64.deb
    sudo gdebi -n /tmp/virtualbox.deb
fi
