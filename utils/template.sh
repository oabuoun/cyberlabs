#!/usr/bin/env zsh

#	Download PACKAGE XYZ
echo "=== `date` : Start Downloading PACKAGE XYZ ==="

<<'EOF'

echo "=== `date` : Creating Shortcut for PyCharm ==="

cat > ${HOME}/Desktop/ <<EOL
#!/usr/bin/env zsh


bash
EOL

chmod 755 ${HOME}/Desktop/

EOF

exit 0
