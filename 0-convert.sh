#!/bin/sh
DIR=copy/
mkdir $DIR
cp -r autoexec maps bots.txt bots-draft.txt font-xolonium.cfg README.en-US.md README.md $DIR
cd $DIR
git checkout zh-cn
for i in $(find); do opencc -c t2s.json -i "$i" -o "../$i"; done
cd ..
git add -A
git commit -m "[script] convert & update from main"
git checkout zh-tw
cd $DIR
# Note that `t2twp.json` is a custom config
for i in $(find); do opencc -c t2twp.json -i "$i" -o "../$i"; done
git add -A
git commit -m "[script] convert & update from main"
git checkout main
cd ..
