#!/bin/bash
vol=$(amixer get Master | grep -oP '\[\d+%\]' | head -1 | tr -d '[]')
mute=$(amixer get Master | grep -q '\[off\]' && echo " (muted)")
echo "  $vol$mute"
