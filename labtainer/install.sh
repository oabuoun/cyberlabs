#!/usr/bin/env zsh

BASEDIR=$(pwd)

#	Download the last version of Labtainer to ~/Downloads
# echo "=== `date` : Download the last version of Labtainer to ~/Downloads  ==="
# wget https://github.com/mfthomps/Labtainers/releases/latest/download/labtainer.tar -O ~/Downloads/labtainer.tar

#	Download the last version of Labtainer to ~/Downloads
echo "=== `date` : Copy labtainer.tar to ~/Downloads  ==="
cp -rp ${BASEDIR}/labtainer/labtainer*.tar ~/Downloads/labtainer.tar

#	Backup any old version of Labtainer
echo "=== `date` : Backup any old version of Labtainer  ==="
mv ~/labtainer ~/labtainer.bak

#	Unzip the downloaded version to Home directory
echo "=== `date` : Unzip the downloaded version to Home directory  ==="
tar -xf ~/Downloads/labtainer.tar -C ~/

#	Copy customised installation scripts (Work on Kali Linux)
echo "=== `date` : Copy customised installation scripts (Work on Kali Linux)  ==="
cp -pf ${BASEDIR}/labtainer/install-labtainer-kali.sh ~/labtainer/
cp -pf ${BASEDIR}/labtainer/install-docker-kali.sh ~/labtainer/trunk/setup_scripts/install-docker-kali.sh
cp -pf ${BASEDIR}/labtainer/fix-zshrc.sh ~/labtainer/trunk/setup_scripts/fix-zshrc.sh

#	CD into the new labtainer directory to start the installation process
echo "=== `date` : Change to `echo ${HOME}`  ==="
cd ${HOME}/labtainer
pwd

#	Create a soft link between /home/kali /home/student
#	Labtainer has /home/student hardcoded in several scripts (especially in the update process). The easiest way to overcome this problem is by a soft link
echo "=== `date` : Create a soft link between /home/kali /home/student  ==="
sudo ln -s /home/kali /home/student

#	Start installing Labtainer on this VM
echo "=== `date` : Start installing Labtainer  ==="
~/labtainer/install-labtainer-kali.sh Kali

#	Create /home/kali/.local/share/labtainers/ directory for imodules
echo "=== `date` : create /home/kali/.local/share/labtainers/ directory for imodule  ==="
mkdir -p /home/kali/.local/share/labtainers/

#	Disable labtainer auto update
echo "=== `date` : Disable labtainer auto update   ==="
rm -rf /home/kali/labtainer/.doupdate
