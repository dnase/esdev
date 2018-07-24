# -*- mode: ruby -*-
# vi: set ft=ruby :

# vagrant plugin install vagrant-hostmanager

Vagrant.configure("2") do |config|
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.manage_guest = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = false
  config.vm.define "esdev" do |vbox|
    vbox.vm.box = "puppetlabs/ubuntu-16.04-64-puppet"
    vbox.vm.box_version = "1.0.0"
    vbox.vm.hostname = "esdev"
    vbox.vm.network :private_network, ip: '10.0.42.16'
    vbox.vm.provider "virtualbox" do |v, override|
        v.customize ["modifyvm", :id, "--memory", 4096]
        v.customize ["modifyvm", :id, "--cpus", 2]
    end
  end
  config.vm.provision :shell, inline: "ufw disable"
  config.vm.provision :shell, inline: "/bin/bash /vagrant/scripts/config.sh"
end
