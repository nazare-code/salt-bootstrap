#!/bin/bash

# Update hosts file
echo "[TASK 0] Update /etc/hosts file"
sudo bash -c "cat>>/etc/hosts<<EOF
192.168.192.20 master.example.com master
192.168.192.31 minion1.example.com minion1
192.168.192.32 minion2.example.com minion2
EOF"

# Install pip
echo "[TASK 1] Install pip and dependencies"
sudo apt-get update>/dev/null 2>&1
sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev python>/dev/null 2>&1
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py>/dev/null 2>&1
sudo python get-pip.py>/dev/null 2>&1
rm -f get-pip.py
sudo pip install --upgrade pip>/dev/null 2>&1

# Install salt
echo "[TASK 2] Install salt"
sudo pip install salt>/dev/null 2>&1

