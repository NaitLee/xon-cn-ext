
| [简体字](../zh-cn/README.md) | [正體字](../zh-tw/README.md) | [香港字](../zh-hk/README.md) | [傳統字](../main/README.md) | [English & Worldwide Notes](./README.en-US.md)

# Xonotic 擴展漢化包

此倉庫包含小部分對 [Xonotic](https://xonotic.org/) 資源文件的修改版，使用非標準方式達到覆蓋面更廣的漢化，方便英語不熟練的玩家提升遊戲體驗。

可繼續閱讀，以瞭解更多。

## 內容

目前已覆蓋：

- 單人戰役的詳細描述
- 各官方地圖的名稱與描述
- 機器人玩家名稱（貼近英文名意的暱稱）
- 小部分實用控制檯指令/變量的解釋

## 使用

首先要瞭解，在 Xonotic 遊戲目錄，有一文件夾 `data`，其中存放着遊戲資源。

```
Xonotic/
  ├── bin32
  ├── bin64
  ├── data  <-- 這裏
  │   ├── font-xolonium-20220627.pk3
  │   ├── xonotic-20220627-data.pk3
  │   ├── xonotic-20220627-maps.pk3
  │   └── ...
  ├── ...
  ├── xonotic-dedicated.exe
  ├── xonotic.exe
  └── ...
```

下文將此文件夾稱爲「資源目錄」。
<br />

然後，使用任一方式「安裝」：

- 去[發佈頁面](https://github.com/NaitLee/xon-cn-ext/releases)下載相應文字的資源包（後綴爲 `.pk3`），放入資源目錄

- **或者**，也可以*在資源目錄*克隆此倉庫：`git clone https://github.com/NaitLee/xon-cn-ext`  
  然後，將倉庫文件夾*重命名*爲 `~xon-cn-ext.pk3dir`  
  並在倉庫切換至相應文字的分支：`git checkout zh-cn/zh-tw/main`

之後，**可考慮**：

- 獲取最新的 Xonotic 標準翻譯資源，點擊下載：[簡](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/raw/master/common.zh_CN.po?inline=false) | [正](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/raw/master/common.zh_TW.po?inline=false)\* | [港](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/raw/master/common.zh_HK.po?inline=false)\*，放入資源目錄，以獲得最新的翻譯進度與修正。

- 如果默認的像素字體（Unifont）不好看，可自定。將心儀的 `.ttf`（或 `.otf`）字體放入資源目錄，重命名爲 `font.ttf` （或 `font.otf`） 即可。  
  如，可從[此處](https://github.com/googlefonts/noto-cjk/releases)獲取合適的中日韓系列 Noto 字體，解壓並挑選合適的一款。

配置完畢後，啓動遊戲即可 ✔

----

\* 請注意，由於近月來我單打獨鬥完成了簡體翻譯，而其他翻譯遲遲不前，故做拙策：

- 從完善的簡體翻譯用 OpenCC 轉換爲傳統字，並*人工複覈*糾正謬誤，作爲「一統翻譯」（~~文件尚未公開~~[見此倉庫](https://github.com/NaitLee/xon-zh-grand-l10n)），後從之轉換簡體翻譯

- 從原正體翻譯*人工總結*用語差異（見文件 `patch-twp.sed`），並*吸收其中優秀成果*至一統翻譯，再轉換成*近乎完備*的正體翻譯

- 經瀏覽淺察，香港用語應與大陸差別不大，故直接從一統翻譯轉換（即，僅轉換了用字），填補原先 0% 的空白

## 須知

此擴展包並不遵從遊戲語言設定。即，若您換到英文，此包的中文內容仍在。

此包的實現考慮了便攜性。即，可以把本包整合進 Xonotic 程序併發行，分享給朋友；或放入移動存儲介質，隨時隨地玩。

資源包目錄的命名以 `~` 開頭，是爲了提高包的優先級。DarkPlaces 引擎檢索資源包時以文件名排序、靠後的優先。  
發行的资源包文件以 `z` 開頭，優先級已較原版數據包的 `x` 高，因而無須再調整。

此包利用遊戲引擎機制直接覆蓋了原版文件，其中大部分是*功能性*的，即會影響遊戲玩法。  
已在 Xonotic 0.8.5 及截至目前（2023 年 5 月 31 日）最新的 [git 編譯版本](https://gitlab.com/xonotic/xonotic/-/wikis/Repository_Access)測試，表現良好。  
若之後遊戲在受影響的文件上有更新改動，使用此包時不會反映，且嚴重時可能導致衝突。  
（但目前可放心，預計暫無大幅更改。）

這裏的每一份文件都是純文本文件。如果有不當之處，不妨打開它，動手糾正。  
位於其他分支的翻譯從傳統字使用 OpenCC 轉換、sed 替換而來。傳統字版本使用簡體用詞。可從文件 `0-convert.sh` 瞭解。  
存在謬誤？或覺得某個翻譯如何更好？可以就此討論！

目前，由於遊戲上游 DarkPlaces 引擎的文字渲染方式存在不妥，使用中日韓語言時，遊戲會有較明顯的性能問題。  
可於[此處](https://github.com/DarkPlacesEngine/darkplaces/issues/49)詳細瞭解、跟蹤該缺陷。

## 授權

若無特殊聲明，這裏的文件均以其對應「原版」文件的協議發佈。

Xonotic 本身及大部分資源以 GNU GPLv3+ 授權，詳情在相關 COPYING 文件有聲明。可在[官方倉庫](https://gitlab.com/xonotic/)蒐集瞭解。

另外，用於 OpenCC 的配置文件 `zh-cn.json`、`zh-hk.json` 及 `zh-tw.json` 以 OpenCC 的協議 [Apache 2.0](https://github.com/BYVoid/OpenCC/blob/master/LICENSE) 發佈；作爲轉換字詞補丁 (patch) 的文本文件在公有領域。

## 計劃

- 漢語語音包！不過，遇到自告奮勇的播音員可能並非易事。
- 更簡便的使用方法

## 後記

分享是一種美德。Xonotic 是[尊重計算自由的](https://www.gnu.org/philosophy/free-sw.html)遊戲，與夥伴分享，和朋友同歡，不亦樂乎？

希望這份努力可以讓大家切實感受到軟件自由的必要性、社區合作帶來的豐富可能性。

願精神長存。
