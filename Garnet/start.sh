#!/bin/bash

killall conky
sleep 2s

conky -c $HOME/.config/conky/Garnet/Garnet.conf &> /dev/null &
