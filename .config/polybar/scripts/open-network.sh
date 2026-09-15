#!/usr/bin/env bash
# Open NetworkManager's editor through i3 for reliable focus and placement.
exec i3-msg 'exec --no-startup-id nm-connection-editor'
