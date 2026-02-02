# !/bin/bash
# help
if [ -z $1 ]; then
	echo "usage:"
	echo "create-qrcode.sh [ text | url ]"
	exit 0
fi

# determine if install
if ! type qrencode &>/dev/null; then
	apt install -qyy libqrencode
fi

qrencode -t ANSIUTF8 $*
