#!/data/data/com.termux/files/usr/bin/bash
# rsync -rv --delete /data/data/com.termux/files/home/storage/music/ root@$REMOTE_IP:asset/music

# determine if install
if ! type rsync &>/dev/null; then
	apt install -qy rsync
fi

# Fixed crond PATH issue.
source /data/data/com.termux/files/home/bin/config.sh
rsync --delete -rv -P -e "ssh -p $REMOTE_SSH_PORT " /storage/emulated/0/Music/ root@$REMOTE_IP:music-server/music
