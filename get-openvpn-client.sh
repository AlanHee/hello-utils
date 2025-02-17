#!/bin/bash
source funs.sh

function _() {
	remoteIP=""
	if [ ! -z $REMOTE_IP ]; then
		remoteIP=$REMOTE_IP
	else
		while true; do
			read -p "Openvpn server ip(default $remoteIP): " remote_ip
			if [ ! -z $remote_ip ]; then
				remoteIP=$remote_ip
				break
			fi
			if [ ! -z $remoteIP ]; then
				break
			fi
			echo 'ip can not be empty'
		done
	fi

	if [ ! -z $REMOTE_SSH_PORT ]; then
		scp -P $REMOTE_SSH_PORT root@$remoteIP:/root/client.ovpn ~
	else
		scp root@$remoteIP:/root/client.ovpn ~
	fi
	echo 'Got it.'
}

yesOrNo "Get openvpn client config file now (y/n): " _
