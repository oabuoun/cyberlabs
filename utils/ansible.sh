#!/usr/bin/env zsh

#	Download PACKAGE XYZ
echo "=== `date` : Start Downloading Ansible ==="

sudo apt-add-repository ppa:ansible/ansible

sudo apt update

sudo apt install -y ansible

exit 0
