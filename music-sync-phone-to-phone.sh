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
rsync -a --delete -P -e 'ssh -p 8022' /storage/emulated/0/Music/  u0_a141@$PHONE_IP:/storage/emulated/0/Music
