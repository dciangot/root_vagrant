# This guide is optimized for Vagrant 1.7 and above.
# Although versions 1.6.x should behave very similarly, it is recommended
# to upgrade instead of disabling the requirement below.
Vagrant.require_version ">= 1.7.0"

Vagrant.configure(2) do |config|

  config.vm.box = "debian/jessie64"

  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 4
  end

  #config.vm.network "forwarded_port", guest: 32294, host: 32294

  # Disable the new default behavior introduced in Vagrant 1.7, to
  # ensure that all Vagrant machines will use the same SSH key pair.
  # See https://github.com/hashicorp/vagrant/issues/5005
  config.ssh.insert_key = false

  config.vm.provision "shell",
    inline:  "sudo apt-get install -y git dpkg-dev cmake g++ gcc binutils libx11-dev libxpm-dev \
        libxft-dev libxext-dev gfortran libssl-dev libpcre3-dev \
        xlibmesa-glu-dev libglew1.5-dev libftgl-dev \
        libmysqlclient-dev libfftw3-dev libcfitsio-dev \
        graphviz-dev libavahi-compat-libdnssd-dev \
        libldap2-dev python-dev libxml2-dev libkrb5-dev \
        libgsl0-dev libqt4-dev"

    config.vm.provision "shell",
      path: "scripts/install_root.sh"

  #config.vm.provision "file", source: "tests/test.yml", destination: "/home/vagrant/playbook.yml"
  #config.vm.provision "file", source: "tests/inventory", destination: "/home/vagrant/inventory"
  #config.vm.provision "file", source: "defaults/main.yml", destination: "/home/vagrant/vars.yml"


end