#!/bin/bash

sudo mv /tmp/dotdeb.list /etc/apt/sources.list.d/dotdeb.list
wget https://www.dotdeb.org/dotdeb.gpg
sudo apt-key add dotdeb.gpg
rm dotdeb.gpg
sudo apt-get update && sudo apt-get install php7.0 php7.0-cli php7.0-common php7.0-curl php7.0-dev php7.0-fpm php7.0-gd php7.0-imagick php7.0-intl php7.0-json php7.0-mcrypt php7.0-mysql php7.0-readline php7.0-xdebug php7.0-xmlrpc pkg-php-tools php-pear dh-php -y