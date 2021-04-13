#!/usr/bin/env zsh

#	Setup the Environment
echo "=== `date` : Setting up the Environment ==="
./set_env.sh

#	Install Labtainer
echo "=== `date` : Installing Labtainer ==="
./labtainer/install.sh

#	Install Services
echo "=== `date` : Installing thr Services ==="
./_services/install.sh

#	Reboot the system so the changes will take effect
{
	echo -n "This script will reboot now, press ENTER to continue";
	read;
	echo "OK, See You Later "
	sudo reboot
}
