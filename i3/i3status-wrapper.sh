#!/bin/bash
# Run i3status and inject weather info

i3status | while :; do
    read line
    weather=$(curl -s "wttr.in/Salt+Lake+City?format=%c+%t,+%C&u")
    updates=$(checkupdates 2>/dev/null | wc -l)
    echo " | 🌤 $weather | Updates: $updates | ${line%]}]"
done
