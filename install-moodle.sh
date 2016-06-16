#!/bin/bash

mkdir -p ~/public_html ~/moodledata
chmod 777 ~/moodledata
bash -c 'echo "It Works!" >> ~/public_html/index.html'
unzip /tmp/moodle-3.1.zip -d ~/public_html
sudo chown -R www-data:vagrant ~/public_html
sudo chmod -R 775 ~/public_html
sudo mysql -e 'CREATE DATABASE moodle;'
sudo -u www-data /usr/bin/php ~/public_html/moodle/admin/cli/install.php --chmod=2770 --lang=pt-br --wwwroot=http://192.168.1.2/moodle --dataroot=/home/vagrant/moodledata --dbname=moodle --dbuser=root --dbport=3306 --fullname=Moodle --shortname=moodle --summary=Moodle --adminpass=Admin1234 --non-interactive --agree-license