#!/usr/bin/env bash
DIR=copy
mkdir -p "$DIR"
FILES=$(cat files-to-copy.txt)
echo "Will copy these files to '$DIR':"
echo $FILES
for i in $FILES; do {
    [[ -e "$i" ]] || { echo "'$i' doesn't exist! Quitting"; exit 2; }
    cp -r "$i" "$DIR/"
}; done

# zh-cn
git checkout zh-cn || exit 1
cd "$DIR"
for i in $(find ./); do test -f "$i" && {
    opencc -c t2s.json -i "$i" | sed -f patch-t2s.sed | sed s/​//g >"../$i"
}; done
cd ..
bash "$DIR/pack.sh" zh-cn
git add -A
git commit -m "[script] convert & update from main"

# zh-tw
git checkout zh-tw || exit 1
cd "$DIR"
[[ x"`echo -n '服務器' | opencc -c t2twp.json`" == x"伺服器" ]] || {
    echo 'Please copy the file t2twp.json to /usr/share/opencc/, then continue running this script.'
    echo '    # cp t2twp.json /usr/share/opencc/'
    git checkout main
    exit 2
}
for i in $(find ./);
    do test -f "$i" && {
        sed -f patch-twp.sed "$i" | opencc -c t2twp.json | opencc -c t2tw.json | sed s/​//g >"../$i"
}; done
cd ..
bash "$DIR/pack.sh" zh-tw
git add -A
git commit -m "[script] convert & update from main"
git checkout main

# zh-hk
git checkout zh-hk || exit 1
cd "$DIR"
for i in $(find ./);
    do test -f "$i" && {
        opencc -c t2hk.json -i "$i" | sed s/​//g >"../$i"
}; done
cd ..
bash "$DIR/pack.sh" zh-hk
git add -A
git commit -m "[script] convert & update from main"
git checkout main

echo 'Done!'
