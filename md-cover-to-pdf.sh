#!/bin/bash

# determine if install
if ! type pandoc &>/dev/null; then
	apt install pandoc groff ghostscript -qy
fi

pandoc $1 -o ~/storage/downloads/$1.pdf --pdf-engine=pdfroff
