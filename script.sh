IMAGE=~/afs/i3configperso/tmp/I3lockTMP.png

scrot $IMAGE;
convert $IMAGE -blur 0x8 $IMAGE;

i3lock -e -i $IMAGE;
