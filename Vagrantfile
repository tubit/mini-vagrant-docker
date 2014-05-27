# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # define our basebox
  config.vm.box = "ubuntu/trusty64"

  # forward default docker port
  config.vm.network "forwarded_port", guest: 4243, host: 4243

  # ansible as provisioner
  config.vm.provision "ansible" do |ansible|
    ansible.sudo = true
    ansible.playbook = "provisioning/playbook.yml"
  end
end

