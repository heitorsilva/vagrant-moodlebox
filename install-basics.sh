#!/bin/bash

sudo apt-get update && sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade
sudo apt-get install debconf-utils build-essential module-assistant vim locate silversearcher-ag htop zip git -y
sudo bash -c 'echo "syntax on;" >> ~/.vimrc'
sudo bash -c 'echo "syntax on;" >> /root/.vimrc'
