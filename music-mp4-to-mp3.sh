#!/bin/bash

INPUT_DIR=$1
OUTPUT_DIR=$2

if [ -z $1 ] || [ -z $2 ]; then
	echo "usage:"
	echo "music-mp4-to-mp3.sh input_dir output_dir"
	exit 0
fi

mkdir -p "$OUTPUT_DIR"

# determine if install
if ! type ffmpeg &>/dev/null; then
	apt install -qyy ffmpeg
fi

for MP4_FILE in "$INPUT_DIR"/*.mp4; do
	FILENAME=$(basename "$MP4_FILE" .mp4)
	MP3_FILE="$OUTPUT_DIR/$FILENAME.mp3"
	ffmpeg -i "$MP4_FILE" -q:a 0 -map a "$MP3_FILE"
	echo "Converted $MP4_FILE to $MP3_FILE"
done

echo "All files have been converted."
