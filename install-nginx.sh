#!/bin/bash

wget http://nginx.org/keys/nginx_signing.key
sudo apt-key add nginx_signing.key
rm nginx_signing.key
sudo mv /tmp/nginx.list /etc/apt/sources.list.d/nginx.list
sudo apt-get update && sudo apt-get install nginx -y
sudo sed -i -- 's/user  nginx/user  www-data/' /etc/nginx/nginx.conf
sudo mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.bkp
sudo mv /etc/nginx/fastcgi_params /etc/nginx/fastcgi_params.bkp
sudo mv /tmp/php-fpm.conf /etc/nginx/conf.d/php-fpm.conf
sudo mv /tmp/virtual.host /etc/nginx/conf.d/default.conf
sudo mv /tmp/fastcgi_params /etc/nginx/fastcgi_params
sudo /etc/init.d/nginx reload