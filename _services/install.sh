#!/usr/bin/env zsh

BASEDIR=$(dirname $0)

echo "=== `date` : Create .config/systemd/user ==="
mkdir -p $HOME/.config/systemd/user

echo "=== `date` : Copy all service files to .config/systemd/user ==="
cp -p ${BASEDIR}/*.service $HOME/.config/systemd/user/

echo "=== `date` : Enable the Services ==="
systemctl --user enable cyberlabs
#systemctl --user restart cyberlabs
