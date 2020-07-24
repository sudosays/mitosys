#!/bin/sh
if [ $1 == "off" ] 
then
    xrandr --output DP1 --off;
else
    xrandr --output DP1 --auto --right-of eDP1;
fi
