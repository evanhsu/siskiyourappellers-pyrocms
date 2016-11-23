# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "scotch/box"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  config.vm.network "forwarded_port", guest: 80, host: 8080     #Web port
  config.vm.network "forwarded_port", guest: 5432, host: 5532   #PostgreSQL

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.hostname = "scotchbox"
  
  config.vm.provider "virtualbox" do |v| 
    # Set the VM to use the Host's DNS server to resolve external domain names.
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]

    # Set memory allocation - Laravel installation fails with only 512MB
    v.customize ["modifyvm", :id, "--memory", "4096"]
  end

  # Requires the `vagrant-vbguest` plugin to keep Guest Additions updated.
  # Set auto_update to false if you do NOT want to check the correct 
  # additions version when booting this machine
  config.vbguest.auto_update = true

  # Sync the project folder on the host with the 'www' folder on the vm
  config.vm.synced_folder ".", "/var/www",type: "nfs", mount_options: ['nolock,vers=3,udp,noatime']

    
  # Enable the Virtual Box GUI to watch for any VM boot messages (for troubleshooting bootup issues)
  # config.vm.provider :virtualbox do |vb|
  #   vb.gui = true
  # end

  # Provision the server with a bash script (perform server configuration after it has booted up)
  #config.vm.provision :shell, path: "bootstrap.sh"

  # Database settings for ScotchBox (MySQL & PostgreSQL):
  # dB Name:    scotchbox
  # Username:   root
  # Password:   root
  # Host:       localhost

  # SSH Settings
  # Username:   vagrant
  # Password:   vagrant

end
