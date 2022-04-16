#!/usr/bin/env bash




x=$(ps -ef | grep "polybar example" | wc -l)

if [ $x -gt 1 ]; then
    killall -q polybar
else
    killall -q polybar
    polybar example >> /tmp/polybar1.log 2>&1 &
fi

