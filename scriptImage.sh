wei=$(xrandr | grep " connected" | cut -d' ' -f3 | cut -dx -f1);
hei=$(xrandr | grep " connected" | cut -d' ' -f3 | cut -dx -f2 | cut -d+ -f1);

IMAGE=/home/erwan.vivien/afs/i3configperso/tmp/I3lock
if ! [ -e "$IMAGE""$wei"x"$hei".png ]; then
    convert "$IMAGE".png -resize "$wei"x"$hei"\! "$IMAGE""$wei"x"$hei".png;
fi

i3lock -e -i "$IMAGE""$wei"x"$hei".png;
