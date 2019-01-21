PATH="csharp-tp""$1""-erwan.vivien";
echo $PATH;
if [ ! -d /home/erwan.vivien/afs/algo/csharp/"$PATH" ]; then
/usr/bin/git clone "git@git.cri.epita.fr:p/2023-sup-tp/"$PATH
fi
