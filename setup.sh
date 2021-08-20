#!/usr/bin/env zsh

#	Setup the Environment
echo "=== `date` : Setting up the Environment ==="
./set_env.sh

#	Install Labtainer
#echo "=== `date` : Installing Labtainer ==="
#./labtainer/install.sh

#	Copy Launchers to Home
echo "=== `date` : Copying Launchers to Home ==="
cp -rp launchers ~/.launchers

#	Install Services
echo "=== `date` : Installing thr Services ==="
./_services/install.sh

#	Create Shortcuts
echo "=== `date` : Create Shortcuts ==="
./launchers/create_shortcuts.sh

# Download Utils
echo "=== `date` : Start Downloading Utils ==="
for filename in ./utils/*.sh; do
    [ -e "$filename" ] || continue
		echo "=== `date` : Running Script `echo $filename` ==="
		zsh $filename
    # ... rest of the loop body
done

#	Reboot the system so the changes will take effect
{
	echo -n "This script will reboot now, press ENTER to continue";
	read;
	echo "OK, See You Later "
	cd ..
	rm -rf cyberlabs
	rm -rf ~/Downloads/*
	sudo reboot
}
