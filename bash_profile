#!/bin/bash

KEYCHAIN_PATH=`which keychain`

if [ -n "$KEYCHAIN_PATH" ]
then
  /opt/local/bin/keychain -q id_rsa
  [[ -f ~/.keychain/`hostname`-sh ]] && source ~/.keychain/`hostname`-sh
fi

source ~/.bashrc
uptime

# liftweb path vars
export M2_HOME=/Applications/liftweb-1.0.1/apache-maven
export M2=$M2_HOME/bin
export MAVEN_OPTS="-noverify" 
export PATH=$M2:$PATH

