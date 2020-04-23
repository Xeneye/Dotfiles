#/bin/bash

sleep 1
sh -c "nvidia-settings --assign CurrentMetaMode=\"$(nvidia-settings -t -q CurrentMetaMode |tr -d "\n"|sed 's/ViewPortIn=/ForceFullCompositionPipeline=On, ViewPortIn=/g'|sed 's/.*:://'|sed 's/^ *//;s/ *$//')\""