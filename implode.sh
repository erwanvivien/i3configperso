IMAGE=/home/erwan.vivien/afs/i3configperso/tmp/I3lockTMP.png

scrot $IMAGE;
convert $IMAGE -swirl -360 $IMAGE;
convert $IMAGE -implode -3 $IMAGE;
convert $IMAGE -blur 0x2 $IMAGE;

i3lock -e -i $IMAGE;
