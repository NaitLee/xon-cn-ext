#!/usr/bin/env bash
camp=campaignxonoticbeta.txt
convert() {
    opencc -c ${1}.json -i "$camp.zh_Hant" >"$camp.${2}"
}
echo 'Converting campaign...'

cd maps
convert zh-cn zh_CN
convert zh-tw zh_TW
convert zh-hk zh_HK
cd ..

echo 'Done!'
