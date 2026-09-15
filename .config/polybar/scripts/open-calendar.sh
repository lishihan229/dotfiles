#!/usr/bin/env bash
# Focus an existing agenda popup; otherwise launch the Google-synchronised calendar.
if pgrep -x gnome-calendar >/dev/null; then
  exec i3-msg '[class="gnome-calendar"] focus'
else
  exec i3-msg 'exec --no-startup-id /home/shihan/.config/polybar/scripts/launch-calendar.sh'
fi
