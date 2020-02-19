Vagrant.configure("2") do |config|
    config.vm.box = "scotch/box-pro"
    config.vm.hostname = "simple.test"
    config.vm.network "private_network", ip: "192.168.68.10"
    config.vm.network "forwarded_port", guest: 3306, host: 3310
    config.vm.synced_folder ".", "/var/www", :mount_options => ["dmode=777", "fmode=666"]
    config.vm.provision "shell", path: "up.sh", privileged: false
    config.vm.provision "shell", path: "after.sh", run: "always"
    config.vm.provider "virtualbox" do |v|
        v.memory = 512
        v.cpus = 1
    end
end
