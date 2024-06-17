#!/bin/bash
if [ ! -z $REMOTE_IP ]; then
	ssh root@$REMOTE_IP
else
	while true; do
		read -p 'type in remote ip:' remote_ip
		if [ ! -z $remote_ip ]; then
			ssh root@$remote_ip
			break
		else
			echo 'remote ip can be empty.'
		fi
	done
fi
