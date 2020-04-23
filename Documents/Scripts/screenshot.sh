#!/bin/sh
scrot '[%d-%m-%Y]~%H:%M.png' -e 'mv $f ~/Pictures/Screenshots/Linux/'
notify-send -t 5000 'Screenshot Taken!' --icon=camera
exit
