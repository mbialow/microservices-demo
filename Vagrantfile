# -*- mode: ruby -*-
# vi: set ft=ruby :

domain = "amg.net.pl"
settings = {
  :hostname => "centos-micro-poc",
  :box => "centos/7",
  :ip => "192.168.2.184",
}

Vagrant.configure(2) do |config|

    config.vm.box = "#{settings[:box]}"
    
    config.vm.provision "shell", path: "vagrant_provision.sh"
    
    # Hostname
    config.vm.host_name = "#{settings[:hostname]}.#{domain}"

    # Port forwarding
    config.vm.network :forwarded_port, guest: 90, host: 9080

    # Host-only access private network
    config.vm.network :private_network, ip: settings[:ip]

    # Shared folders
    #config.vm.synced_folder "./", "/home/vagrant/full-sync/"


    if Vagrant.has_plugin?("vagrant-proxyconf")
	config.proxy.http     = "http://w3cache.amg.net.pl:8080"
	config.proxy.https    = "http://w3cache.amg.net.pl:8080"
	config.proxy.no_proxy = "localhost, 127.0.0.1"
    end

    config.vm.provider "virtualbox" do |v|
        v.memory = 2024
        v.cpus = 1
    end

  
  
end

