#!/usr/bin/env zsh

#	Download PACKAGE XYZ
echo "=== `date` : Start Downloading Jenkins ==="

git clone https://github.com/oabuoun/jenkins-blueocean-launcher.git ~/cyber/tools/jenkins

cd ~/cyber/tools/jenkins

docker-compose build

docker-compose pull

exit 0
