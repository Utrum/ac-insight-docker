#!/bin/bash

AC_NAME="OOT"
AC_SUPPLY=216000000

USER=my_rpcuser
PASSWD=my_rpcpassword
SEEDIP=78.47.196.146

docker run -d --rm --name $AC_NAME -ti \
  --net host \
  --mount "src=$AC_NAME,dst=/home/komodo/" \
  kmdplatform/komodod \
  -rpcuser=$USER \
  -rpcpassword=$PASSWD \
  -bind=0.0.0.0 \
  -rpcbind=127.0.0.1 \
  -rpcallowip=0.0.0.0/0 \
  -whitelist=127.0.0.1 \
  -ac_name=$AC_NAME \
  -ac_supply=$AC_SUPPLY \
  -addnode=$SEEDIP \
  -printtoconsole=1 \
  -server=1 \
  -txindex=1 \
  -addressindex=1 \
  -timestampindex=1 \
  -spentindex=1 \
  -uacomment='bitcore' \
  -showmetrics=0 \
  -zmqpubrawtx='tcp://0.0.0.0:8332' \
  -zmqpubhashblock='tcp://0.0.0.0:8332' \
  -reindex

