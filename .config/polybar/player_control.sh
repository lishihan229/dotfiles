#!/bin/sh

player_status=$(playerctl status 2>/dev/null)

if [ "$player_status" = "Playing" ] || [ "$player_status" = "Paused" ]; then
    artist=$(playerctl metadata artist 2>/dev/null)
    title=$(playerctl metadata title 2>/dev/null)

    if [ -n "$artist" ] && [ -n "$title" ]; then
        display_text="$artist - $title"
    elif [ -n "$title" ]; then
        display_text="$title"
    else
        display_text="Unknown"
    fi

    if [ ${#display_text} -gt 50 ]; then
        display_text="$(echo "$display_text" | cut -c 1-47)..."
    fi

    if [ "$player_status" = "Playing" ]; then icon=""; else icon=""; fi

    echo "%{A1:playerctl previous:}%{A}  $display_text  %{A1:playerctl next:}%{A}  %{A1:playerctl play-pause:}$icon%{A}"
fi
