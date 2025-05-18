#!/bin/bash
brightness=$(brightnessctl | grep -oP '\(\d+%\)' | tr -d '()')
echo " $brightness"
