#!/bin/bash

NAME=top

pid=$( pgrep -if "polybar $NAME")
while [ "$?" -eq "0" ];
do
    kill $pid
    pid=$( pgrep -if "polybar $NAME" )
done

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#polybar top -c ~/.config/polybar/config-top.ini &
for i in $(polybar -m | awk -F: '{print $1}'); do
    MONITOR=$i polybar $NAME -c ~/.config/polybar/config-top.ini & 
done

