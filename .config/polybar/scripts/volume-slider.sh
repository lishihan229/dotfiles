#!/usr/bin/env bash
# Opens a simple graphical volume slider using Zenity.
set -eu

volume="$(pactl get-sink-volume @DEFAULT_SINK@ | awk 'NR == 1 {gsub(/%/, "", $5); print $5}')"
selected="$(zenity --scale --title='Volume' --text='Output volume' --min-value=0 --max-value=100 --step=1 --value="${volume:-0}" --width=340 2>/dev/null || true)"

if [[ -n "$selected" ]]; then
  pactl set-sink-mute @DEFAULT_SINK@ 0
  pactl set-sink-volume @DEFAULT_SINK@ "${selected}%"
fi
