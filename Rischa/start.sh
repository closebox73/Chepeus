#!/bin/bash

killall conky
sleep 2s

conky -c $HOME/.config/conky/Rischa/Rischa.conf &> /dev/null &
