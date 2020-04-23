#!/bin/bash

sh -c "nvidia-settings --assign CurrentMetaMode=\"$(nvidia-settings -t -q CurrentMetaMode |tr -d "\n"|sed 's/.*:://'|sed 's/^ *//;s/ *$//'|sed "s/CompositionPipeline=On/CompositionPipeline=Off/g")\""
notify-send -t 5000 'Disabled Compositing' --icon=video-display
