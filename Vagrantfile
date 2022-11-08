# -*- mode: ruby -*-
# vi: set ft=ruby :

#RUN VAGRANT_VAGRANTFILE=Vagrantfile.libvirt vagrant up
#ENV['VAGRANT_DEFAULT_PROVIDER'] = 'libvirt'

Vagrant.configure("2") do |config|

  config.vm.define "docker" do |config|
  config.vm.hostname = "docker.local"
  config.vm.box = "debian/buster64"
  config.nfs.verify_installed = false
  config.vm.synced_folder '.', '/vagrant', disabled: true
  config.vm.box_check_update = false
  #config.vm.network "private_network", ip: "192.168.18.9"
  #if loeading take a lot of time.
  config.vm.boot_timeout = 7200
  #if loading take a lot of time.
  config.vm.provider :libvirt do |v|
    v.memory = 2048
  end 
  #for emulation. with kvm faster.
  config.vm.provider :libvirt do |domain|
    domain.driver = 'qemu'
  end 
  
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "libvirt-playbook.yml"
    config.vm.network "forwarded_port", guest: 9443, host: 9443, protocol: "tcp"
    config.vm.network "forwarded_port", guest: 1194, host: 1194, protocol: "tcp"
    #config.vm.network "forwarded_port", guest: 80, host: 8081, protocol: "tcp"
  end
 end
end
