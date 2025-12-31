#!/bin/bash

# Starta Firefox och Terminalen i bakgrunden
firefox &
gnome-terminal &

# Vänta lite så att fönstren hinner öppnas helt
sleep 2

# Flytta fönstren (0 = skärm 1, x, y, bredd, höjd)
# Terminalen till vänster (halva skärmen)
wmctrl -r "Terminal" -e 0,0,0,960,1080
# Firefox till höger (andra halvan)
wmctrl -r "Firefox" -e 0,960,0,960,1080
