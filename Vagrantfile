Vagrant.configure(2) do |config|
  config.vm.box = "debian/jessie64"
  config.vm.box_check_update = false
  config.vm.hostname = "webserver.vm"
  config.vm.network "private_network", ip: "192.168.1.2"
  config.vm.provider "virtualbox" do |vb|
    vb.name = "moodlebox"
    vb.gui = false
    vb.memory = "1024"
    vb.customize ["modifyvm", :id, "--vram", "8"]
  end
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.provision "fix-no-tty", type: "shell" do |s|
    s.privileged = false
    s.inline = "sudo sed -i '/tty/!s/mesg n/tty -s \\&\\& mesg n/' /root/.profile"
  end
  config.vm.provision "file", source: "dotdeb.list", destination: "/tmp/dotdeb.list"
  config.vm.provision "file", source: "fastcgi_params", destination: "/tmp/fastcgi_params"
  config.vm.provision "file", source: "nginx.list", destination: "/tmp/nginx.list"
  config.vm.provision "file", source: "moodle-3.1.zip", destination: "/tmp/moodle-3.1.zip"
  config.vm.provision "file", source: "mysql-apt-config_0.7.3-1_all.deb", destination: "/tmp/mysql-apt-config_0.7.3-1_all.deb"
  config.vm.provision "file", source: "php-fpm.conf", destination: "/tmp/php-fpm.conf"
  config.vm.provision "file", source: "virtual.host", destination: "/tmp/virtual.host"
  config.vm.provision "shell", path: "install-basics.sh", privileged: false
  config.vm.provision "shell", path: "install-nodejs.sh", privileged: false
  config.vm.provision "shell", path: "install-mysql.sh", privileged: false
  config.vm.provision "shell", path: "install-php.sh", privileged: false
  config.vm.provision "shell", path: "install-nginx.sh", privileged: false
  config.vm.provision "shell", path: "install-moodle.sh", privileged: false
end