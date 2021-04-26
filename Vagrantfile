# -*- mode: ruby -*-
# vi: set ft=ruby :

$LINUX_TOOLS = <<-EOF

  sudo apt install -y golang-go tldr httpie jq tor 

EOF

Vagrant.configure("2") do |config|
  # Kali Box
    config.vm.define "kali", primary: true do |kali|
  	    kali.vm.provider "virtualbox" do |v|
  		    v.name = "kali"
		    v.memory = 4096
		    v.cpus = 2
  	    end

        # Install kali vagrant box
        kali.vm.box = "kalilinux/rolling"
        kali.vm.hostname = "kali.local"
    
        # Install tools
        kali.vm.provision "shell", type: "shell" do |s|
            s.inline = $LINUX_TOOLS
        end

        # Setup directory structure
        kali.vm.provision "file", source: "data/code", destination: "$HOME/code"
        kali.vm.provision "file", source: "data/ctf", destination: "$HOME/ctf"
        
        kali.trigger.after :up do |trigger|
            trigger.info = "Starting tor"
            trigger.run_remote = { 
                inline: <<-EOF 
                    sudo service tor start
                EOF
                }
        end

        kali.vm.post_up_message = "Welcome to Kali Linux by Offensive Security. Enjoy your stay!"
    end
  
  # Juiceshop
    config.vm.define "juiceshop", autostart: false do |juiceshop|
        juiceshop.vm.provider "virtualbox" do |v|
            v.name = "juiceshop"
            v.memory = 2048
        end

        juiceshop.vm.box = "ubuntu/xenial64"
        juiceshop.vm.hostname = "juice.sh"
        juiceshop.vm.network "private_network", ip: "192.168.33.20"
        juiceshop.vm.provision "file", source: "provision/www/default.conf", destination: "/tmp/juice-shop/default.conf"
        juiceshop.vm.provision :shell, path: "provision/juiceshop.sh"

        juiceshop.vm.post_up_message = "View this machine at http://192.168.33.20"
    end
