#!/bin/sh
DIR="pack"
mkdir -p "$DIR"
cd maps
ZIP="../pack/campaigns.pk3"
rm "$ZIP"
echo "campaigns.pk3 | `date -R`" | zip -r9 -z "$ZIP" $(ls)
cd ..
