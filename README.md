## MoodleBox

This repository is a [Vagrant](https://www.vagrantup.com/) box to build up a Debian server running NGINX (latest), PHP 7, MySQL 5.7, NodeJS 6 and Moodle 3.1.

====================
#### Instructions

This box was made in a way that supports Vagrant 1.8.1 or higher. It also requires [VirtualBox 5](https://www.virtualbox.org/).

After installing this box on your computer, from inside the MoodleBox directory, type:
```
vagrant up
```

You can log to this box by using:
```
vagrant ssh
```

The default user is vagrant, and its password is vagrant.

**ATENTION**  
If you run Vagrant on a Unix-like operating system, it's possible that it will ask a password everytime you do vagrant up or vagrant halt.  
This password will be the one from the user that has the right to run sudo commands.  
In case you want Vagrant to never ask for a password again when using the mentioned commands, you must add one line in the sudoers file.  
```
sudo visudo
```

At the end of the file, add this:
```
Cmnd_Alias VAGRANT_HOSTMANAGER_UPDATE = /bin/cp /home/<YOUR_USER>/.vagrant.d/tmp/hosts.local /etc/hosts
%sudo ALL=(root) NOPASSWD: VAGRANT_HOSTMANAGER_UPDATE
```

Change <YOUR_USER> for the user that you use on your operating system, that has permission to run sudo commands.

Reference: [http://www.josheaton.org/how-to-automatically-add-hosts-to-vagrant-without-a-password-on-os-x/](http://www.josheaton.org/how-to-automatically-add-hosts-to-vagrant-without-a-password-on-os-x/)

====================
#### Passwords

Debian:  
```
username=vagrant
password=vagrant

MySQL:  
```
username=root
password=
```

Moodle:  
```
username=admin
password=Admin1234
```
