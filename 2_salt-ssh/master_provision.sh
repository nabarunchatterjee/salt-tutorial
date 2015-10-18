#INSTALLATION

sudo add-apt-repository ppa:saltstack/salt
sudo apt-get --yes -q update
sudo apt-get --yes -q install salt-master salt-ssh

#Create file root

sudo mkdir -p /srv/salt/states/base
sudo mkdir -p /srv/salt/states/dev
sudo mkdir -p /srv/salt/pillars/base
sudo mkdir -p /srv/salt/pillars/dev
sudo mkdir -p /srv/salt/_modules
sudo mkdir -p /srv/salt/_returners
sudo mkdir -p /srv/salt/reactors

#Set permissions to sync master config
sudo chmod 777 /etc/salt/*

#Restart Salt Master

sudo service salt-master restart
