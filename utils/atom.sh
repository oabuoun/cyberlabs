#!/usr/bin/env zsh

#	Download Atom Editor
echo "=== `date` : Start Downloading Atom Editor ==="

wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'

sudo apt-get update

# Install Atom
sudo apt-get -y install atom
# Install Atom Beta
sudo apt-get -y install atom-beta

exit 0
