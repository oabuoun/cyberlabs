#!/usr/bin/env zsh

sudo apt-get -y install libgl1-mesa-glx

sudo apt-get -y install libxcb-xinerama0-dev

sudo apt-get -y install dialog

#	Download PACKAGE XYZ
#echo "=== `date` : Start Downloading PACKAGE XYZ ==="

yes | sudo dpkg -i ~/Downloads/PacketTracer.deb

cat > ${HOME}/Desktop/PacketTracert <<EOL
#!/usr/bin/env zsh

bash /usr/local/bin/packettracer

EOL

chmod 755 ${HOME}/Desktop/PacketTracert

EOF

exit 0
