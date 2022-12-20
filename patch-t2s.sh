#!/usr/bin/env bash
# patch to output of opencc s2t (with incomplete conversion)
sed 's/揹/背/g' <&0 | sed 's/暱/昵/g'
