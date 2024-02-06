#!/bin/bash
cmds=(cmatrix neofetch)

echo "Funs list:"
for i in "${!cmds[@]}"; do
	echo "$((i + 1)). ${cmds[$i]}"
done

read -p "Choose in: " choice

exec "${cmds[choice - 1]}"
