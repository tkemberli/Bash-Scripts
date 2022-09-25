#!/bin/bash

status=$(playerctl status)
maxMessageSize=60

function icon () {
    if [[ "$status" == "Playing" ]]
    then
        echo ""
    elif [[ "$status" == "Paused" ]]
    then
        echo ""
    fi
}

function info() {
    message="$(icon) $(playerctl metadata title) - $(playerctl metadata artist)"

    if (( ${#message} <= $maxMessageSize ))
    then
        echo $message
    else
        echo ${message::(maxMessageSize - 3)}'...'
    fi
}

if [ "$status" == "Playing" ] || [ "$status" == "Paused" ]
then
    echo $(info)
else
    echo ""
fi
