sleep 1
gnome-terminal --geometry 120x31+150+300 --working-directory=/home/kali/labtainer/labtainer-student -e "bash -c \"/bin/cat README; exec bash\"" &
if [[ -f /home/kali/labtainer/.doupdate ]]; then
    gnome-terminal --geometry 73x31+100+300 --working-directory=/home/kali/labtainer -x ./update-labtainer.sh
fi
if [[ -f /home/kali/labtainer/.dosmoke ]]; then
    gnome-terminal --geometry 120x31+150+300 --working-directory=/home/kali/labtainer/trunk/setup_scripts -e "bash -c \"exec bash -c ./full-smoke-test.sh \"" &
fi

