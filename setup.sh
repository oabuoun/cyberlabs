#!/bin/bash

BASEDIR=$(dirname $0)

echo "setxkbmap gb" >> ~/.bashrc
sudo timedatectl set-timezone Europe/London

./labtainer/install.sh
