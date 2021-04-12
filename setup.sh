#!/bin/bash

BASEDIR=$(dirname $0)

setxkbmap gb
echo "setxkbmap gb" >> ~/.profile
sudo timedatectl set-timezone Europe/London

./labtainer/install.sh
