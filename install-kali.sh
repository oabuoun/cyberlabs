wget https://github.com/mfthomps/Labtainers/releases/latest/download/labtainer.tar -O ~/Downloads/labtainer.tar

tar -xf ~/Downloads/labtainer.tar -C ~/

cp -p install-labtainer-kali.sh ~/labtainer/
cp -p install-docker-kali.sh ~/labtainer/trunk/setup_scripts/

. ~/labtainer/install-labtainer-kali.sh Debian
