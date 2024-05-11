#!/bin/bash
source funs.sh

phoneIP="0.0.0.0"
if [ ! -z $PHONE_IP ]; then
	phoneIP=$PHONE_IP
fi

read -p "Set up remote ip($phoneIP):" PHONE_IP
if [ ! -z $PHONE_IP ]; then
	phoneIP=$PHONE_IP
fi

saveExport PHONE_IP $phoneIP
echo "Phone server IP($phoneIP) setup"
