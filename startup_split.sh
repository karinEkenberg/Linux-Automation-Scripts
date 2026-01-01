#!/bin/bash

# Starta programmen
/usr/bin/xfce4-terminal &
firefox &

# Vänta lite längre för säkerhets skull
sleep 3

# Flytta fönster baserat på enkla sökord
wmctrl -r "Terminal" -e 0,0,0,960,1040
