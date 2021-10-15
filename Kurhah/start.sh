#!/bin/bash

killall conky
sleep 2s

conky -c $HOME/.config/conky/Kurhah/Kurhah.conf &> /dev/null &
