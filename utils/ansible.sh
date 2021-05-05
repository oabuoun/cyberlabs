#!/usr/bin/env zsh

#	Download PACKAGE XYZ
echo "=== `date` : Start Downloading Jenkins ==="

git clone https://github.com/oabuoun/jenkins-blueocean-launcher.git ~/devsecops/jenkins

cd ~/devsecops/jenkins

docker-compose build

docker-compose pull

exit 0
