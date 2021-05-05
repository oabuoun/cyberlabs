#!/usr/bin/env zsh

#	Download PACKAGE XYZ
echo "=== `date` : Start Downloading MySQL ==="

git clone https://github.com/oabuoun/phpmyadmin-mysql.git ~/devsecops/mysql

cd ~/devsecops/mysql

docker-compose build

docker-compose pull

exit 0
