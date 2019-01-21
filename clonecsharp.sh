PATH="/home/erwan.vivien/afs/algo/csharp/"
if [ ! -d "$PATH""csharp-tp"$1"-erwan.vivien" ]; then
   cd $PATH;
   git clone git@git.cri.epita.fr:p/2023-sup-tp/csharp-tp"$1"-erwan.vivien
fi
