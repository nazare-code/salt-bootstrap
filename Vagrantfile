# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |master|
  
  # Salt Master
  master.vm.box = "ubuntu/bionic64"
  master.vm.hostname = "saltmaster.example.com"
  master.vm.network "private_network", ip: "192.168.192.20"
  master.vm.provider "virtualbox" do |vb|
    vb.name = "salt-master"
    vb.cpus = "1"
    vb.memory = "1024"
  end
  master.vm.provision "shell", path: "bootstrap_saltmaster.sh", privileged: false
end





