#!/usr/bin/env zsh

BASEDIR=$(dirname $0)

mkdir -p $HOME/.config/systemd/user
cp -p ${BASEDIR}/*.service $HOME/.config/systemd/user/

systemctl --user enable cyberlabs
#systemctl --user restart cyberlabs
