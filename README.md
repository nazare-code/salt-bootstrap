# Salt Master and Minion(s) bootstrapping - Vagrant/VirtualBox

## Master & Minion

If you want to run more than 1 minion edit Vagrantfile and change NodeCount. Update /etc/hosts inside bootstrap_salt_pkg.sh if necessary.

$sudo vagrant up


## Test environment

Check and accept unaccepted keys

master$ sudo salt-key
master$ salt-key -a 'minion*'

Test running minions

master$ sudo salt '*' test.ping
master$ sudo salt '*' pkg.install nginx

master$ curl http://minion1
