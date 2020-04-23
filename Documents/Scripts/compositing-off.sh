#!/bin/sh
xfconf-query -Tc xfwm4 -p /general/use_compositing - false
nvidia-settings --assign CurrentMetaMode="3440x1440_120 +0+0 { ForceFullCompositionPipeline = Off }"
notify-send -t 5000 'Disabled compositing' --icon=video-display
exit
