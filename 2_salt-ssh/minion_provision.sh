sudo apt-get --yes -q install python-software-properties                        
sudo add-apt-repository ppa:saltstack/salt                                      
sudo apt-get --yes -q update                                                    
sudo apt-get --yes -q install salt-minion

sudo chmod 777 /etc/salt/minion
