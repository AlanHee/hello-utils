#!/bin/bash
# e.g: 
# */1 * * * * echo "$(date) test" >> "${HOME}/test.txt"

apt install -qyy cronie
crond
crontab -e


