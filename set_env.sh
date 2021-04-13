#!/usr/bin/env zsh

#	Change Default Keyboard to GB layout
echo "=== `date` : Change Default Keyboard to GB layout ==="
setxkbmap gb

echo "=== `date` : Adding the GB layout to  .zshrc ==="
echo "setxkbmap gb" >> ~/.zshrc

#	Change the VM timezone of Europe/London
echo "=== `date` : Change the VM timezone of Europe/London ==="
sudo timedatectl set-timezone Europe/London

#	Tell Zsh where to find the dot files
echo "=== `date` : Tell Zsh where to find the dot files ==="
echo "export ZDOTDIR=$HOME" >> /home/kali/.zshenv
