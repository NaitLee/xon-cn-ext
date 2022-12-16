#!/bin/sh
mkdir -p pack
echo "$1.pk3 | `date -R`" | zip -r9 -z "pack/$1.pk3" $(cat list.txt)
