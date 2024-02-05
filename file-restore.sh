#!/bin/bash
# tar usage args:
# c create compress pack
# x export compress pack
# f excute as file
# tar cf /tmp/etc-bacup.tar /etc
# tar czf /tmp/etc-backup.tar.gz /etc # package it and compress 'gz'
# tar cjf /tmp/etc0cakup.tar.bz2 /etc # better size but time
# tar xf | xzf zjf /tmp/xxx.tar /path_to_uncompres

file=$1
tar xf $file ~

#e.g: file-restore.sh etc.tar
