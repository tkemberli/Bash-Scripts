#!/bin/bash

icon=""
level=$(cat /sys/class/power_supply/hidpp_battery_0/capacity_level)

echo "$icon $level"