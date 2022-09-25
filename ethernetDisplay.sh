#!/bin/bash

interface="eno1"
status=$(cat /sys/class/net/$interface/operstate)

if [[ "$status" == "up" ]]
then
    echo ""
else
    echo ""
fi