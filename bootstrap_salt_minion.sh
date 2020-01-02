#!/bin/bash

# Create directory structure
echo "[TASK 1] Create salt directories"
sudo mkdir -p /etc/salt/minion.d

# Configure minion id
echo "[TASK 2] Configure minion id"
sudo bash -c "cat >>/etc/salt/minion_id<<EOF
$HOSTNAME
EOF"

# Add master config
echo "[TASK 3] Add master config"
sudo bash -c "cat >>/etc/salt/minion.d/master.conf<<EOF 
master: master.example.com
EOF"

# Run salt
echo "[TASK 4] Run salt"
sudo /usr/local/bin/salt-minion -d
