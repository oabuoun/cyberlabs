#!/usr/bin/env zsh

echo "=== `date` : Create Shortcut for .launchers/labtainer_launcher.sh on Desktop ==="

cat > ${HOME}/Desktop/Labtainer <<EOL
#!/usr/bin/env zsh

. ~/.launchers/labtainer_launcher.sh
EOL

chmod 755 ${HOME}/Desktop/Labtainer
