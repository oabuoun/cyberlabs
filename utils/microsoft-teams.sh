#!/usr/bin/env zsh

#	Download PACKAGE XYZ
echo "=== `date` : Start Downloading Microsoft Teams ==="

wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.4.00.7556_amd64.deb -O ~/Downloads/microsoft_teams.deb

yes | sudo dpkg -i ~/Downloads/microsoft_teams.deb

exit 0
