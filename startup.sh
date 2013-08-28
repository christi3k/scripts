#!/bin/bash

# disable thinkpad touchpad
synclient TouchpadOff=1

# set caplocks to control
/usr/bin/setxkbmap -option "ctrl:nocaps"
