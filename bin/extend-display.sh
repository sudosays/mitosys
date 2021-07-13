#!/bin/sh
if [ $1 == "off" ] 
then
    xrandr --output DP1 --off;
else
    xrandr --output DP1 --auto --left-of eDP1;
fi
