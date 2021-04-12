#!/bin/bash

BASEDIR=$(dirname $0)

wget https://github.com/mfthomps/Labtainers/releases/latest/download/labtainer.tar -O ~/Downloads/labtainer.tar

mv ~/labtainer ~/labtainer.bak

tar -xf ~/Downloads/labtainer.tar -C ~/

cp -pf ${BASEDIR}/install-labtainer-kali.sh ~/labtainer/
cp -pf ${BASEDIR}/install-docker-kali.sh ~/labtainer/trunk/setup_scripts/install-docker-kali.sh

cd ~/labtainer

#sed -i 's/\/home\/student/\/home\/kali/g' trunk/setup_scripts/pull-all.py

sudo ln -s /home/kali /home/student

./install-labtainer-kali.sh Kali
