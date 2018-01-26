#!/bin/bash
set -e
sudo apt-get install php-cli
if [ ! -f /usr/local/bin/drush ]; then
    sudo wget -O /usr/local/bin/drush https://github.com/drush-ops/drush-launcher/releases/download/0.4.2/drush.phar
    sudo chmod +x /usr/local/bin/drush
fi


# install dropcat
curl -OL h https://dropcat.org/dropcat.phar > dropcat.phar
chmod +x dropcat.phar
sudo mv dropcat.phar /usr/local/bin/dropcat
dropcat about
