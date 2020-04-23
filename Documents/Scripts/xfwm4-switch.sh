#!/bin/sh
status=$(xfconf-query -c xfwm4 -p /general/use_compositing)
xfconf-query -Tc xfwm4 -p /general/use_compositing
#nvidia-settings --assign CurrentMetaMode="3440x1440_120 +0+0 { ForceFullCompositionPipeline = Off }"
# Comment the lines below to disable notifications
if [ $status = "false" ]; then
	~/Documents/Scripts/nvidia.compositionpipeline.enable.sh &    	
	notify-send -t 10000 'Enabled compositing' --icon=video-display
else
	~/Documents/Scripts/nvidia.compositionpipeline.disable.sh &    
	notify-send -t 10000 'Disabled compositing' --icon=video-display
fi
exit