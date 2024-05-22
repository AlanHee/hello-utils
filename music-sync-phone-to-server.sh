#!/bin/sh
#Make sure no /bin/bash
rsync -rv --delete /data/data/com.termux/files/home/storage/music/ root@$REMOTE_IP:music/asset/
