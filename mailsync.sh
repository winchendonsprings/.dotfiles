#!/bin/sh
# check offlineimap is running
ps -ef | grep -v grep | grep offlineimap
#if not found - equals to 1, start it
if [ $? -eq 1 ]
then
    echo "offlineimap wasn't running, starting it now" >&2
    offlineimap &
else
    echo "offlineimap is already running" >&2
fi
