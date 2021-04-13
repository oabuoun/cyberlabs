#!/usr/bin/env bash

cd ~/Documents/Security/Kali

##	5.6 GB
env GZIP=-9 tar cvzf cyberlabs-2021.1-vmware-amd64.tar.gz kali-linux-2021.1-vmware-amd64.vmwarevm

##	4.1 GB
7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on cyberlabs-2021.1-vmware-amd64.7z kali-linux-2021.1-vmware-amd64.vmwarevm

##	
7z a -t7z -mx=9 -mfb=273 -ms -md=31 -myx=9 -mtm=- -mmt -mmtf -md=1536m -mmf=bt3 -mmc=10000 -mpb=0 -mlc=0 cyberlabs-2021.1-vmware-amd64-extra.7z kali-linux-2021.1-vmware-amd64.vmwarevm
