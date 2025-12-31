#!/bin/bash

# Starta Firefox
firefox &

# Starta terminalen
gnome-terminal --title="HackerTerminal" &

# Vänta på att fönstren laddas
sleep 8

# Flytta Firefox till höger
wmctrl -r "Firefox" -e 0,960,0,960,1040

# Flytta Terminalen till vänster
wmctrl -r "HackerTerminal" -e 0,0,0,960,1040
