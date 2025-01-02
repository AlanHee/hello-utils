!/bin/bash

OUTPUT_FILE="$1"
DOWNLOAD_URL="$2"

# print help msg
if [ -z $1 || -z $2 ]; then
	echo "usage: get-file.sh output_file_name download_url"
	echo "eg: get-file.sh linux.iso http://xxx.com/xxx.iso"
fi

# determine if installed aria2
if ! command -v aria2c &>/dev/null; then
	pkg install aria2 -qy
fi

aria2c -o "$OUTPUT_FILE" "$DOWNLOAD_URL"

# check if download success
if [ $? -eq 0 ]; then
	echo "succeess get file: $1"
else
	echo "get file error."
fi
