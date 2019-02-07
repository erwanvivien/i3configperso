DP=$(xrandr | grep " connected" | cut -d' ' -f1);

while true; 
do 
    xrandr --output $DP --gamma 1:0.001:0.001; 
    sleep 0.1; 
    xrandr --output $DP --gamma 0.001:1:0.001; 
    sleep 0.1; 
    xrandr --output $DP --gamma 0.001:0.001:1;  
    sleep 0.1; 
done &
disown
