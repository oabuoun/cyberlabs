#!/usr/bin/env zsh

#	Change Default Keyboard to GB layout
setxkbmap gb
echo "setxkbmap gb" >> ~/.zshrc

#	Change the VM timezone of Europe/London
sudo timedatectl set-timezone Europe/London

#	Tell Zsh where to find the dot files 
echo "export ZDOTDIR=$HOME" >> /home/kali/.zshenv

#	Install Labtainer
./labtainer/install.sh

#	Install Services
./_services/install.sh

#	Reboot the system so the changes will take effect
{
	echo -n "This script will reboot now, press ENTER to continue";
	read;
	echo "OK, See You Later "
	sudo reboot
}
