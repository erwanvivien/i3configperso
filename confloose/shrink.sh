DP=$(xrandr | grep " connected" | cut -d' ' -f1);
wei=$(xrandr | grep " connected" | cut -d' ' -f3 | cut -dx -f1);
hei=$(xrandr | grep " connected" | cut -d' ' -f3 | cut -dx -f2 | cut -d+ -f1);

while true; do let "hei = hei -1"; let "wei = wei -1"; xrandr --output $DP --scale-from "$wei"x"$hei"; sleep 10; done
