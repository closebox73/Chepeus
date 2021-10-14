#!/bin/bash

killall conky
sleep 2s

conky -c $HOME/.config/conky/Er-Rai/Er-Rai.conf &> /dev/null &
conky -c $HOME/.config/conky/Er-Rai/Er-Rai2.conf &> /dev/null &
conky -c $HOME/.config/conky/Er-Rai/Er-Rai3.conf &> /dev/null &
