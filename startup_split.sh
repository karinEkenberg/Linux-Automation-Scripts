#!/bin/bash

# 1. Starta Firefox (nu när inställningarna är fixade räcker detta)
firefox &

# 2. Starta terminalen (denna vet vi att systemet hittar)
gnome-terminal --title="HackerTerminal" &

# 3. Vänta ordentligt så att systemet hinner rita upp fönstren
sleep 6

# 4. Flytta Firefox till höger
wmctrl -r "Firefox" -e 0,960,0,960,1040

# 5. Flytta Terminalen till vänster
wmctrl -r "HackerTerminal" -e 0,0,0,960,1040
