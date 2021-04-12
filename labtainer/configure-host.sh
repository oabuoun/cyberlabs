#!/bin/bash

cp -p .doterms.sh /home/kali/
echo "$HOME/.doterms.sh &" >> /home/kali/.profile
tee -a /home/kali/.bashrc1 << END
export LABTAINER_DIR=$HOME/labtainer/trunk
if [[ ":$PATH:" != *":./bin:"* ]]; then
       export PATH="${PATH}:./bin:/home/kali/labtainer/trunk/scripts/designer/bin"
fi
   if [[ ":$PATH:" != *":scripts/designer/bin:"* ]]; then
       export PATH="${PATH}:/home/kali/labtainer/trunk/scripts/designer/bin"
       export LABTAINER_DIR=/home/kali/labtainer/trunk
   fi
END
