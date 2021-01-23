#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/top.log /tmp/bottom.log
polybar top 2>&1 | tee -a /tmp/top.log & disown
polybar bottom 2>&1 | tee -a /tmp/bottom.log & disown
polybar right-top 2>&1 | tee -a /tmp/right-top.log & disown

echo "Bars launched..."
