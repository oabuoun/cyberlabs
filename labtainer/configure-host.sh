#!/usr/bin/env zsh

#cp -p .doterms.sh /home/kali/

#echo "$HOME/.doterms.sh &" >> /home/kali/.zprofile
#tee -a /home/kali/.zshenv << END
#export LABTAINER_DIR=$HOME/labtainer/trunk
#END

#echo "$HOME/.doterms.sh &" >> /home/kali/.zprofile

tee -a /home/kali/.zshenv << END
export ZDOTDIR=$HOME
END

tee -a /home/kali/.zshrc << END
if [[ ":$PATH:" != *":./bin:"* ]]; then
       export PATH="${PATH}:./bin:/home/kali/labtainer/trunk/scripts/designer/bin"
fi

if [[ ":$PATH:" != *":scripts/designer/bin:"* ]]; then
   export PATH="${PATH}:/home/kali/labtainer/trunk/scripts/designer/bin"
   export LABTAINER_DIR=/home/kali/labtainer/trunk
fi
END
