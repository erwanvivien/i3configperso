# first argument  : path in console where you want to save it
# second argument : username of this repo
# third argument  : password of this repo
# fourth argument : helder of the git
# fifth argument  : name of the project

PATH=$1
git=https://"$2":"$3"@github.com/"$4"/"$5"

if [ ! -d "$PATH""$5" ]; then
    pushd $PATH
    /usr/bin/git clone $git;
else
    pushd "$PATH""$5";
    /usr/bin/git pull $git;
fi
