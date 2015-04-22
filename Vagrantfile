# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.
  
  config.vm.hostname = "lirkes"

  config.vm.box = "ubuntu/trusty64"

  config.vm.network :forwarded_port, guest: 8080, host: 8080 # Tomcat

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
  end  

shared_dir = "/vagrant"

  config.vm.provision "shell", path: "./install_scripts/bootstrap.sh", args: shared_dir
  config.vm.provision "shell", path: "./install_scripts/solr.sh", args: shared_dir
  config.vm.provision "shell", path: "./install_scripts/warc-utilities.sh", args: shared_dir
end
