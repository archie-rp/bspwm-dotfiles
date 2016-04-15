# /etc/profile

#Set our umask
umask 022

#bspwm
PANEL_FIFO=/tmp/panel-fifo
PANEL_HEIGHT=24
#PANEL_FONT="-*-terminus-medium-r-normal-*-12-*-*-*-c-*-*-1"
PANEL_FONT="-benis-uushi-medium-r-normal--11-90-75-75-p-58-iso10646-1"
PANEL_WM_NAME=bspwm_panel
export PANEL_FIFO PANEL_HEIGHT PANEL_FONT PANEL_WM_NAME

# Set our default path
PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/home/archierp/.config/bspwm"
export PATH

# Load profiles from /etc/profile.d
if test -d /etc/profile.d/; then
	for profile in /etc/profile.d/*.sh; do
		test -r "$profile" && . "$profile"
	done
	unset profile
fi

# Source global bash config
if test "$PS1" && test "$BASH" && test -z ${POSIXLY_CORRECT+x} && test -r /etc/bash.bashrc; then
	. /etc/bash.bashrc
fi

# Termcap is outdated, old, and crusty, kill it.
unset TERMCAP

# Man is much better than us at figuring this out
unset MANPATH
