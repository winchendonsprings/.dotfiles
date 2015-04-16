#!/bin/zsh

# /etc/X11/xinit/xinitrc (now ~/.xinitrc)
#
# global xinitrc file, used by all X sessions started by xinit (startx)
#
# invoke global X session script
#. /etc/X11/Xsession

xrdb -merge ~/.Xresources &								# update x resources db
xbindkeys & 											# key shortcuts
start-pulseaudio-x11 & 	                                # start audio
urxvtd -q -o -f & 										# rxvt-unicode daemon
unclutter -root -idle 2.5 & 							# hide mouse cursor
xautolock -time 20 -locker /home/ry/Documents/lock.sh -detectsleep &     #auto suspend with screen lock
parcellite -n -d & 										# clipboard
syndaemon -i 2 -d -t -k & 								# disable trackpad until typing is finished
/home/ry/.dotfiles/mailsync.sh &                        # start offlineimap
hsetroot -solid "#151515" &				 				# set wallpaper to solid color # is this working?
exec i3              									# starts the window manager

########## unused below ##########

## Start GNOME Keyring
#eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
## You probably need to do this too:
#export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK

#tint2 													# tint2 panel
#eval $(gnome-keyring-daemon --start) 					# use gnome keyring ???,  not needed with zsh plugin
#ssh-agent 												# use this with ssh-add to be prompted to ssh passphrase on boot, not needed with zsh plugin
#sleep 5s && ssh-add 									# ssh passphrase prompt, not needed wth zsh plugin
#xrandr --auto --output DVI-I-2 --right-of DVI-I-1 		# multi monitor desktop 
#xsetroot -cursor_name left_ptr & 						# set X cursor, not needed
#xscreensaver -no-splash &                              # adds lock 
#xautolock -time 30 -locker "sudo pm-suspend && i3lock -c 000000" -detectsleep &    #auto suspend with screen lock
#bitlbee -c /home/ry/.bitlbee/bitlbee.conf -d /home/ry/.bitlbee/ &      # adds gchat client to irc
#offlineimap & 											# pull/push email
#hsetroot -fill /home/ry/Pictures/shining.jpg &			# set wallpaper to shining carpet # is this working? 
#feh --bg-tile ~/Pictures/white.png 					# set background image with feh
#sh /home/ry/.fehbg 									# set background image with feh, that is the same from last time you set it
#gnome-settings-daemon & 								# all of gnome settings
#exec openbox-session             	 					# starts the window manager

##################################
