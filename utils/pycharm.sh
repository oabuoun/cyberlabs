#!/usr/bin/env zsh

#	Download PACKAGE XYZ
echo "=== `date` : Start Downloading PyCharm ==="

wget https://download.jetbrains.com/python/pycharm-community-2021.1.tar.gz -O ~/Downloads/pycharm.tar.gz

sudo tar xzf ~/Downloads/pycharm.tar.gz -C /opt/

echo "=== `date` : Creating Shortcut for PyCharm ==="

cat > ${HOME}/Desktop/PyCharm <<EOL
#!/usr/bin/env zsh

cd /opt/pycharm-*/bin

bash pycharm.sh
EOL

chmod 755 ${HOME}/Desktop/PyCharm

exit 0
