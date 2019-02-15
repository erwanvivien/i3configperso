nb=3;

wei=$(xrandr | grep " connected" | cut -d' ' -f"$nb" | cut -dx -f1);
if ! [[ $wei == *"1"* ]] ; then
    echo lol;
    nb=4;
fi

wei=$(xrandr | grep " connected" | cut -d' ' -f"$nb" | cut -dx -f1);
hei=$(xrandr | grep " connected" | cut -d' ' -f"$nb" | cut -dx -f2 | cut -d+ -f1);

IMAGE=~/afs/i3configperso/tmp/I3lock

if ! [ -e "$IMAGE""$wei"x"$hei".png ] ; then
    convert "$IMAGE".png -resize "$wei"x"$hei"\! "$IMAGE""$wei"x"$hei".png;
    echo yolo
fi

i3lock -e -i "$IMAGE""$wei"x"$hei".png;
