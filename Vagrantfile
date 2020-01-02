# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV['VAGRANT_NO_PARALLEL'] = 'yes'

Vagrant.configure("2") do |config|
  
  # Salt Master
  config.vm.define "master" do |master|
    master.vm.box = "ubuntu/bionic64"
    master.vm.hostname = "master.example.com"
    master.vm.network "private_network", ip: "192.168.192.20"
    master.vm.provider "virtualbox" do |vb|
      vb.name = "master"
      vb.cpus = "1"
      vb.memory = "1024"
    end
    master.vm.provision "shell", path: "bootstrap_salt_pkg.sh", privileged: false
    master.vm.provision "shell", path: "bootstrap_salt_master.sh", privileged: false
  end

  # Salt Minions
  NodeCount = 1
  (1..NodeCount).each do |i|
    config.vm.define "minion#{i}" do |minion|
      minion.vm.box = "ubuntu/bionic64"
      minion.vm.hostname = "minion#{i}.example.com"
      minion.vm.network "private_network", ip: "192.168.192.3#{i}"
      minion.vm.provider "virtualbox" do |v|
        v.name = "minion#{i}"
        v.cpus = "1"
        v.memory = "1024"
      end
    minion.vm.provision "shell", path: "bootstrap_salt_pkg.sh", privileged: false
    minion.vm.provision "shell", path: "bootstrap_salt_minion.sh", privileged: false
    end
   end 

end
