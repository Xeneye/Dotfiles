#!/bin/sh
xfconf-query -Tc xfwm4 -p /general/use_compositing - true
nvidia-settings --assign CurrentMetaMode="3440x1440_120 +0+0 { ForceFullCompositionPipeline = On }"
notify-send -t 5000 'Enabled compositing' --icon=video-display
exit
