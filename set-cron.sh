#!/bin/bash
# e.g: 
# */1 * * * * echo "$(date) test" >> "${HOME}/test.txt"
# */1 * * * * /data/data/com.termux/files/usr/bin/rsync -rv --delete /data/data/com.termux/files/home/storage/music/ root@1.1.1.1:music/asset/
pkg install cronie termux-services -qyy
sv-enable crond
crond
crontab -e


