#!/bin/bash

# Stop prior instances before starting a single fresh bar.
killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Detach Polybar from i3's startup command. Its log remains available for
# troubleshooting without relying on an open terminal.
setsid polybar -c /home/shihan/.config/polybar/config.ini main \
    </dev/null >>/tmp/polybar-main.log 2>&1 &

echo "Polybar was started."
