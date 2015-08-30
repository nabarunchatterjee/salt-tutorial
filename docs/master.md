INSTALLATION

sudo add-apt-repository ppa:saltstack/salt
sudo apt-get --yes -q update
sudo apt-get --yes -q install salt-master


VERIFICATION

sudo salt --version


CONFIGURATION

Salt Master Config
File: /etc/salt/master
Contents:
    interface: <IP OF LOCAL MACHINE>
    file_roots:
    base:
        - /srv/salt/states/base

Create file root
sudo mkdir -p /srv/salt/states/base

Restart Salt Master
sudo service salt-master restart
