#!/bin/bash

AC_NAME=$1
ac_name=`echo "$AC_NAME" | tr '[:upper:]' '[:lower:]'`
JSON=`cat $AC_NAME.json`
AC_UI="https://github.com/Utrum/insight-ui-$ac_name"

docker run \
  --rm \
  -d -ti \
  -e JSON="$JSON" \
  -e AC_UI=$AC_UI \
  --net=host \
  --name=insight \
  kmdplatform/insight

