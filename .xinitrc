#!/bin/zsh

# /etc/X11/xinit/xinitrc (now ~/.xinitrc)
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
#. /etc/X11/Xsession



## Start GNOME Keyring
#eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
## You probably need to do this too:
#export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK

#feh --bg-tile ~/Pictures/white.png 					# set background image with feh
#sh /home/ry/.fehbg 									# set background image with feh, that is the same from last time you set it
#tint2 													# tint2 panel
#eval $(gnome-keyring-daemon --start) 					# use gnome keyring ???
#ssh-agent 												# use this with ssh-add to be prompted to ssh passphrase on boot
#sleep 5s && ssh-add 									# ssh passphrase prompt
#xrandr --auto --output DVI-I-2 --right-of DVI-I-1 		# multi monitor desktop 
#xsetroot -cursor_name left_ptr & 						# set X cursor, not needed
xbindkeys & 											# key shortcuts
unclutter -root -idle 2.5 & 											# hide mouse cursor
start-pulseaudio-x11 & 	# start audio
xrdb -merge ~/.Xresources &								# update x resources db
urxvtd -q -o -f & 										# rxvt-unicode daemon
parcellite -n -d & 										# clipboard
syndaemon -i 2 -d -t -k & 								# disable trackpad until typing is finished
xscreensaver -no-splash &
bitlbee -c /home/ry/.bitlbee/bitlbee.conf -d /home/ry/.bitlbee/ & 	# adds gchat client to irc
offlineimap & 											# pull email
hsetroot -solid "#151515" &				 				# set wallpaper to solid color # is this working? 
#gnome-settings-daemon & 								# all of gnome settings
exec openbox-session             	 					# starts the window manager
#exec i3              									# starts the window manager
