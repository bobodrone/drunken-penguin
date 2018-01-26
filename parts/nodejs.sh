#! /bin/bash

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

# gulp
sudo npm install gulp-cli -g
sudo npm install gulp -D

# yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn
#ev run: sudo apt remove cmdtest

# grunt
sudo npm install -g grunt-cli

# bower
sudo npm install -g bower
