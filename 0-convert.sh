#!/usr/bin/env bash
DIR=copy
FILES=$(cat files-to-copy.txt)

mkdir -p "$DIR"
echo "Will copy these files to '$DIR':"
echo $FILES
for file in $FILES; do {
    if [ ! -e "$file" ]; then
        echo "'$file' doesn't exist!"
        exit 2
    fi
    cp -r "$file" "$DIR/"
}; done

convert() {
    lang=${1}
    git checkout $lang || exit 1
    cd "$DIR"
    for file in $(find ./); do
        if test -f "$file"; then
            opencc -c $lang.json -i "$file" >"../$file"
        fi
    done
    cd ..
    bash "$DIR/pack.sh" $lang
    git add -A
    git commit -m "[script] convert & update from main"
}

convert zh-cn
convert zh-tw
convert zh-hk

git checkout main
echo 'Done!'
