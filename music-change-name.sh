#!/bin/bash

# usage eg: music-change-name.sh storage/music flac

# 指定音乐文件所在的目录
MUSIC_DIR="$1"

# determine if install
if ! type ffmpeg &>/dev/null; then
	apt install -qyy ffmpeg
fi

# 遍历目录中的MP3文件
for file in "$MUSIC_DIR"/*.$2; do
    # 使用ffprobe提取歌手和标题
    # 注意：这里假设标签是英文的，并且格式是标准的
    # 如果标签包含特殊字符或格式不同，可能需要调整正则表达式
    artist=$(ffprobe -v error -show_entries format_tags=artist -of default=noprint_wrappers=1:nokey=1 "$file" 2>/dev/null)
    title=$(ffprobe -v error -show_entries format_tags=title -of default=noprint_wrappers=1:nokey=1 "$file" 2>/dev/null)

    # 如果提取到了歌手和标题，则进行重命名
    if [[ -n "$artist" && -n "$title" ]]; then
        # 构建新的文件名
        new_filename="${artist// /_}-${title// /_}.$2"
        # 生成新的文件路径
        new_filepath="$MUSIC_DIR/$new_filename"
        # 重命名文件
        mv "$file" "$new_filepath"
        echo "Renamed $file to $new_filepath"
    else
        echo "No artist or title found for $file"
    fi
done
