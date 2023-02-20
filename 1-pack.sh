#!/bin/sh
DIR="pack"
mkdir -p "$DIR"
ZIP="pack/$1.pk3"
rm "$ZIP"
echo "$1.pk3 | `date -R`" | zip -r9 -z "$ZIP" $(cat files-to-copy.txt)
