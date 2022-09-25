#!/bin/bash

icon="xfce4-clock"
alarmSound="/home/tkemberli/media/alarm.wav"
alarmType="wav"

playerctl pause
pw-play $alarmSound &
dunstify -u critical -h string:x-dunst-stack-tag:alarm -i $icon $1