#!/bin/bash

sudo add-apt-repository -y ppa:papirus/papirus
sudo apt-get update
sudo apt-get -y install papirus-icon-theme gnome-tweak-tool arc-theme

# install gnome-shell
sudo add-apt-repository -y ppa:ne0sight/chrome-gnome-shell
sudo apt-get update
sudo apt-get -y install chrome-gnome-shell
