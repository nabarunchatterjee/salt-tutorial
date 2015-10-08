#INSTALLATION

sudo add-apt-repository ppa:saltstack/salt
sudo apt-get --yes -q update
sudo apt-get --yes -q install salt-master salt-ssh

#Create file root

sudo mkdir -p /srv/salt/states/base

#Set permissions to sync master config
sudo chmod 777 /etc/salt/*

#Restart Salt Master

sudo service salt-master restart
