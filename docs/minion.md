INSTALLATION

sudo apt-get --yes -q install python-software-properties
sudo add-apt-repository ppa:saltstack/salt
sudo apt-get --yes -q update
sudo apt-get --yes -q install salt-minion


VERIFICATION
sudo salt-minion --version

CONFIGURATION

File: /etc/salt/minion
Contents:
    master: 192.168.33.11

RESTART   
sudo service salt-minion restart
