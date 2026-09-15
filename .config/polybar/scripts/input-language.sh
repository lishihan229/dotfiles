#!/usr/bin/env bash
# Shows the active IBus engine and toggles German/Pinyin on click.
set -eu

current_engine="$(ibus engine 2>/dev/null || true)"

if [[ "${1:-}" == "--toggle" ]]; then
  if [[ "$current_engine" == "pinyin" ]]; then ibus engine xkb:de::deu; else ibus engine pinyin; fi
  exit 0
fi

if [[ "$current_engine" == "pinyin" ]]; then printf '中 Pinyin\n'; else printf 'DE\n'; fi
