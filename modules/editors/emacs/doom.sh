#!/bin/sh
DOOM="$HOME/.emacs.d"

if [ ! -d "$DOOM" ]; then
	git clone https://github.com/hlissner/doom-emacs.git $DOOM
	xterm -e $DOOM/bin/doom -y install & disown
else
	xterm -e $DOOM/bin/doom sync
fi

#$DOOM/bin/doom sync