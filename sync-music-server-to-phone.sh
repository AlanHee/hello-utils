#!/bin/bash
#options

#with bandwith limt 50%
#rsync --bwlimit=50

#with date for sync bakcup
#rsync -av /home/test/Desktop/Linux /home/test/Desktop/rsync$(date +%Y-%m-%d)

#just run see the diff
#rsync --dry-run

#apt install rsync -y
#make sure the 'path/' and 'path' is diff 
rsync -rv --delete  root@$REMOTE_IP:/root/music/asset/ /storage/emulated/0/Music/
