# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box = 'bento/ubuntu-16.04'

  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
    vb.customize ['modifyvm', :id, '--memory', 512]
    vb.customize ['modifyvm', :id, '--name', 'minikube-wks']
    vb.customize ['modifyvm', :id, '--cpus', '1']
  end

  config.vm.provision 'shell', inline: <<-SHELL
  	useradd ubuntu
    mkdir -p /home/ubuntu/.ssh
    chown -R ubuntu:ubuntu /home/ubuntu

    cd /vagrant/scripts/
    chmod +x install.sh && ./install.sh
    cp /vagrant/ansible/hosts /etc/ansible/hosts
  SHELL

  config.vm.provision :ansible_local do |ansible|
    ansible.playbook       = 'ansible/provision.yml'
    ansible.verbose        = true
    ansible.install        = true
    ansible.limit          = 'all'
  end

end
