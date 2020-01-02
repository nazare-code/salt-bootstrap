#!/bin/bash

# Install pip
echo "[TASK 1] Download and install pip"
sudo apt-get update>/dev/null 2>&1
sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev python>/dev/null 2>&1
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py>/dev/null 2>&1
sudo python get-pip.py>/dev/null 2>&1
sudo pip install --upgrade pip>/dev/null 2>&1

# Install salt
echo "[TASK 2] Install salt"
sudo pip install salt>/dev/null 2>&1

# Create salt directory structure
echo "[TASK 3] Create salt directories"
sudo mkdir -p /etc/salt/master.d
sudo mkdir -p /srv/salt/base/

# Configure master
echo "[TASK 4] Create master file"
sudo bash -c "cat >>/etc/salt/master.d/roots.conf<<EOF 
file_roots:
  base:
    - /srv/salt/base/
EOF"

