#!/bin/bash

killall conky
sleep 2s

conky -c $HOME/.config/conky/Alderamin/Alderamin.conf &> /dev/null &
conky -c $HOME/.config/conky/Alderamin/Alderamin2.conf &> /dev/null &
