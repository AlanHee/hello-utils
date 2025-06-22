#!/bin/bash
# list
echo "Basic Fun List:"
#tty 	:teletypewriter Check which virtual console is currently being used
#touch file  :change the modification time of a file without altering its content
#readlink -f file
cmds=(file tty touch du readlink)

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
	apt install -qy $cmd
fi

case $cmd in
touch)
	read -p "witch file?" file
	exec $cmd $file
	;;
du)
	read -p "disk state path:" path
	exec $cmd -c -s -h $path
	;;
file | readlink)
	read -p "with file?" file
	if [ $cmd == "file" ]; then
		exec $cmd $file
	else
		exec $cmd -f $file
	fi
	;;
*)
	exec $cmd
	;;
esac
