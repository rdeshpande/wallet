#!/bin/bash

KEYCHAIN_PATH=`which keychain`

if [ -n "$KEYCHAIN_PATH" ]
then
  /opt/local/bin/keychain -q id_rsa
  [[ -f ~/.keychain/`hostname`-sh ]] && source ~/.keychain/`hostname`-sh
fi

source ~/.bashrc

echo -e "Kernel Information: " `uname -smr`
echo -e "${COLOR_BROWN}`bash --version`"
echo -ne "${COLOR_LIGHT_GRAY}Uptime: "; uptime
echo -ne "${COLOR_LIGHT_GRAY}Server time is: "; date
