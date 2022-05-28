#!/bin/bash

killall conky
sleep 2s

conky -c $HOME/.config/conky/Nunki/Nunki.conf &> /dev/null &
conky -c $HOME/.config/conky/Nunki/Nunki2.conf &> /dev/null &
