#!/bin/bash
cmds=($(find . -maxdepth 2 -type f -executable))

echo "Script list:"
for i in "${!cmds[@]}"; do
	echo "[$((i + 1))] ${cmds[$i]}"
done

let size=${#cmds[@]}
read -p "Choose in: " choice
# check
if ! [[ $choice -le $size ]]; then
	echo "Plesae choose due in 1 to $size."
	exit 1
fi

exec "${cmds[choice - 1]}"
