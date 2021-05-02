#!/usr/bin/env zsh

#	Download PACKAGE XYZ
echo "=== `date` : Start Downloading TeamViewer ==="

wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb -O ~/Downloads/teamviewer_amd64.deb

yes | sudo dpkg -i ~/Downloads/teamviewer_amd64.deb

exit 0
