#!/usr/bin/env bash
# patch to output of opencc s2t (with incomplete conversion)
sed 's/背/背/g' <&0 | sed 's/昵/昵/g'
