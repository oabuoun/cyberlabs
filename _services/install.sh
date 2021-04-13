#!/usr/bin/env zsh

BASEDIR=$(pwd)

mkdir -p $HOME/.config/systemd/user
cp -p ${BASEDIR}/_services/*.service $HOME/.config/systemd/user/

systemctl --user enable cyberlabs
#systemctl --user restart cyberlabs
