#!/bin/bash

killall conky
sleep 2s

conky -c $HOME/.config/conky/Alfirk/Alfirk.conf &> /dev/null &
conky -c $HOME/.config/conky/Alfirk/Alfirk2.conf &> /dev/null &
conky -c $HOME/.config/conky/Alfirk/Alfirk3.conf &> /dev/null &
