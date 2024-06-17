#!/bin/bash
#uage: 
#show-cookbook.sh or sc 
#show-cookbook.sh git or sc git

# determine if bat install
if ! type bat &>/dev/null; then
	apt install -qyy bat
fi

if [ ! -z $1 ]; then 
	bat $SRC/src/cookbook/$1.md
	exit 0
fi

# list
echo "Doc list:"
docs=(termux linux linux-shell linux-tool vim git github dart docker mongo)
for i in "${!docs[@]}"; do
	echo "$((i + 1)). ${docs[$i]}"
done

# read
read -p "Choose in: " choice
size=${#docs[@]}
doc=${docs[choice - 1]}


bat $SRC/src/cookbook/$doc.md
