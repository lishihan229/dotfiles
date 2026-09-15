#!/usr/bin/env bash
# No session-changing command runs until an item is chosen deliberately.
set -eu

choice="$(printf '󰌾  Lock\n󰒲  Sleep\n󰍃  Logout\n󰜉  Reboot\n󰐥  Shutdown' | rofi -dmenu -i -p 'Session' -theme-str 'window { width: 18em; } listview { lines: 5; }' 2>/dev/null || true)"

case "$choice" in
  '󰌾  Lock') loginctl lock-session ;;
  '󰒲  Sleep') loginctl suspend ;;
  '󰍃  Logout') i3-msg exit ;;
  '󰜉  Reboot') systemctl reboot ;;
  '󰐥  Shutdown') systemctl poweroff ;;
esac
