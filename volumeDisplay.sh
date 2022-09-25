#!/bin/bash

volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk {'print $2'})
isMuted=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk {'print $3'})

if [[ "$isMuted" == "[MUTED]" ]]
then 
    echo "  $volume"
    

else
    echo "  $volume"
fi