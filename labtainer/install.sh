#!/usr/bin/env zsh

BASEDIR=$(dirname $0)

#	Download the last version of Labtainer to ~/Downloads
wget https://github.com/mfthomps/Labtainers/releases/latest/download/labtainer.tar -O ~/Downloads/labtainer.tar

#	Backup any old version of Labtainer
mv ~/labtainer ~/labtainer.bak

#	Unzip the downloaded version to Home directory
tar -xf ~/Downloads/labtainer.tar -C ~/

#	Copy customised installation scripts (Work on Kali Linux)
cp -pf ${BASEDIR}/install-labtainer-kali.sh ~/labtainer/
cp -pf ${BASEDIR}/install-docker-kali.sh ~/labtainer/trunk/setup_scripts/install-docker-kali.sh

#	CD into the new labtainer directory to start the installation process
cd ${HOME}/labtainer

#sed -i 's/\/home\/student/\/home\/kali/g' trunk/setup_scripts/pull-all.py

#	Create a soft link between /home/kali /home/student
#	Labtainer has /home/student hardcoded in several scripts (especially in the update process). The easiest way to overcome this problem is by a soft link
sudo ln -s /home/kali /home/student

#	Start installing Labtainer on this VM
. ${BASEDIR}/install-labtainer-kali.sh Kali
