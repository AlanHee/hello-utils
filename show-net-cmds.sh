#!/bin/bash

# list
echo "Pop net cmds list:"
cmds=(---Base--- ping icmp traceroute netstat ---DNS--- nslookup dig)
for i in "${!cmds[@]}"; do
	echo "$((i + 1)). ${cmds[$i]}"
done

# read
read -p "Choose in: " choice
size=${#cmds[@]}
cmd=${cmds[choice - 1]}

# check
if ! [[ $choice -le $size ]]; then
	echo "Plesae choose due in 1 to $size."
	exit 1
fi

# determine if install
if ! type $cmd &>/dev/null; then
	apt install -qyy $cmd
fi

exec $cmd
