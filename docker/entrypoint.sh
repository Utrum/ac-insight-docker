#!/bin/bash

echo $JSON > /home/node/ACexplorer/bitcore-node.json

cd ACexplorer
if [ -z $AC_UI ];
    then echo "UI repository not specified. Running on API only mode.";
    else $bitcoreNode install git+$AC_UI;
fi
$bitcoreNode start

