#!/usr/bin/env bash
# Use NetworkManager directly, avoiding device-specific Polybar network quirks.
set -eu

connection="$(nmcli -t -f ACTIVE,SSID,SIGNAL device wifi 2>/dev/null | awk -F: '$1 == "yes" {print $2 "|" $3; exit}')"

if [[ -n "$connection" ]]; then
  ssid="${connection%%|*}"
  signal="${connection##*|}"
  printf ' %s %s%%\n' "$ssid" "$signal"
else
  printf ' offline\n'
fi
