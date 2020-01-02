#!/bin/bash

# Create directory structure
echo "[TASK 1] Create salt directories"
sudo mkdir -p /etc/salt/master.d
sudo mkdir -p /srv/salt/base/

# Configure master
echo "[TASK 2] Configure master"
sudo bash -c "cat >>/etc/salt/master.d/roots.conf<<EOF 
file_roots:
  base:
    - /srv/salt/base/
EOF"

# Run salt
echo "[TASK 3] Run salt master"
sudo /usr/local/bin/salt-master -d
