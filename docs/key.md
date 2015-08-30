##BASIC OPERATIONS
###List

all keys:                           `sudo salt-key -L`

all accepted keys:                  `sudo salt-key -l acc`

all unaccepted keys:                `sudo salt-key -l un`

###Accept

all pending keys:                   `sudo salt-key -A`

specific key(s)[Globs supported]:   `sudo salt-key -l <minion_id>`

###Delete

all keys:                           `sudo salt-key -D`

specific key(s)[Globs supported]:   `sudo salt-key -d <minion_id>`


##PRESEED MINION WITH ACCEPTED KEY
(http://docs.saltstack.com/en/latest/topics/tutorials/preseed_key.html)

###On Master

*Create key

`sudo salt-key --gen-keys=<minion_id>`

*Add the public key to the accepted minion folder

sudo cp <minion_id>.pub /etc/salt/pki/master/minions/[minion_id]

*Copy keys to minion(Security risk)

`scp <minion_id>.pub root@<minion_ip>:/etc/salt/pki/minion/minion.pub`

`scp <minion_id>.pem root@<minion_ip>:/etc/salt/pki/minion/minion.pem`

###On Minion

*Restart  minion
`sudo service salt-minion restart`
