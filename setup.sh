#!/usr/bin/env zsh

BASEDIR=$(dirname $0)

#	Change Default Keyboard to GB layout
setxkbmap gb
echo "setxkbmap gb" >> ~/.zshrc

#	Change the VM timezone of Europe/London
sudo timedatectl set-timezone Europe/London

#	Install Labtainer
. ${BASEDIR}/labtainer/install.sh

#	Install Services
. ${BASEDIR}/_services/install.sh

#	Reboot the system so the changes will take effect
read -p "This script will reboot now, press enter to continue"
sudo reboot
