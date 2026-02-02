#!/bin/bash

mkdir -p ~/.shortcuts

# just for test
echo 'echo "Hello from shortcut!"' >~/.shortcuts/hello.sh
chmod +x ~/.shortcuts/hello.sh

# copy sync music script to
cp $SRC/src/utils/sync-music-phone-to-server.sh ~/.shortcuts

echo "Shortcuts Created."
echo "Now make sure Installed termux-widget app in your phone."
echo "Then drop wdigets in your homepage."
