#!/bin/bash
# AlanHee (alan.hee@outlook.com) 2024.12.04

#determine if installed openssl
if ! type openssl &>/dev/null; then
	apt install openssl-tool -qyy
fi

msg=$1
if [ -z $msg ]; then
	read -p "Type in message to hash: " msg
fi

echo -n $msg | openssl dgst -sha256
