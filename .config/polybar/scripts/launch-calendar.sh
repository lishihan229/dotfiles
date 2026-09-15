#!/usr/bin/env bash
# Detach the graphical app from i3's one-shot command process.
nohup gnome-calendar >/tmp/gnome-calendar.log 2>&1 &
