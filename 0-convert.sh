#!/usr/bin/env bash
DIR=copy
mkdir -p "$DIR"
cp -r $(cat list.txt) "$DIR/"
cd "$DIR"
git checkout zh-cn || exit 1
for i in $(find ./); do test -f "$i" && ( opencc -c t2s.json -i "$i" | bash patch-t2s.sh >"../$i" ); done
cd ..
bash "$DIR/pack.sh" zh-cn
git add -A
git commit -m "[script] convert & update from main"
git checkout zh-tw || exit 1
cd "$DIR"
[[ x"`echo -n '服務器' | opencc -c t2twp.json`" == x"伺服器" ]] || (
    echo 'Please copy the file t2twp.json to /usr/share/opencc/, then continue running this script.'
    echo '    # cp t2twp.json /usr/share/opencc/'
    git checkout main
    exit 2
)
for i in $(find ./); do test -f "$i" && ( opencc -c t2twp.json -i "$i" >"../$i" ); done
cd ..
bash "$DIR/pack.sh" zh-tw
git add -A
git commit -m "[script] convert & update from main"
git checkout main
