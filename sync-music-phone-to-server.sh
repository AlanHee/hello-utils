#!/data/data/com.termux/files/usr/bin/sh
# rsync -rv --delete /data/data/com.termux/files/home/storage/music/ root@$REMOTE_IP:asset/music
rsync --delete -rv -P -e "ssh -p 64263 " /storage/emulated/0/Music/ root@154.64.245.143:music-server/music
