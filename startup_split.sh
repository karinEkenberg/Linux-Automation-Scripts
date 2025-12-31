#!/bin/bash

# Starta programmen
firefox &
gnome-terminal &

# Vänta lite längre för säkerhets skull
sleep 10

# Flytta fönster baserat på enkla sökord
wmctrl -r "Firefox" -e 0,960,0,960,1040
wmctrl -r "Terminal" -e 0,0,0,960,1040
