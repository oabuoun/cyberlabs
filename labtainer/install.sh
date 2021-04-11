wget https://github.com/mfthomps/Labtainers/releases/latest/download/labtainer.tar -O ~/Downloads/labtainer.tar

mv ~/labtainer ~/labtainer.bak

tar -xf ~/Downloads/labtainer.tar -C ~/

cd ~/labtainer

cp -pf install-labtainer-kali.sh ~/labtainer/
cp -pf install-docker-kali.sh ~/labtainer/trunk/setup_scripts/install-docker-kali.sh

cd ~/labtainer

./install-labtainer-kali.sh Kali
