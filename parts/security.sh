#! /bin/bash

# Remove ubuntu shopping lens and the annoying apport.
sudo apt-get -y install pass

curl -O https://prerelease.keybase.io/keybase_amd64.deb
sudo dpkg -i keybase_amd64.deb
sudo apt-get install -f -y
rm keybase_amd64.deb
