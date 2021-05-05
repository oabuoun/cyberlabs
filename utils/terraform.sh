#!/usr/bin/env zsh

#	Download PACKAGE XYZ
echo "=== `date` : Start Downloading Terraform ==="
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com bionic  main"

sudo apt update

sudo apt install -y terraform

exit 0
