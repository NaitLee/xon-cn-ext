
| [简体中文](../zh-cn/README.md) | [正體中文](../zh-tw/README.md) | [傳統字中文](../main/README.md) | [English & Worldwide Notes](./README.en-US.md)

# Xonotic 擴充套件漢化包

此倉庫包含小部分對 [Xonotic](https://xonotic.org/) 資原始檔的修改版，使用非標準方式達到覆蓋面更廣的漢化，方便英語不熟練的玩家提升遊戲體驗。

可繼續閱讀，以瞭解更多。

## 內容

目前已覆蓋：

- 單人任務的詳細描述
- 各官方地圖的名稱與描述
- 機器人玩家名稱（*不是*音譯，貼近英文名意）
- 小部分實用控制檯指令/變數的解釋

## 使用

首先要瞭解，在 Xonotic 遊戲目錄，有一資料夾 `data`，其中存放著遊戲資源。

```
Xonotic/
  ├── bin32
  ├── bin64
  ├── data  <-- 這裡
  │   ├── font-xolonium-20220627.pk3
  │   ├── xonotic-20220627-data.pk3
  │   ├── xonotic-20220627-maps.pk3
  │   └── ...
  ├── ...
  ├── xonotic-dedicated.exe
  ├── xonotic.exe
  └── ...
```

下文將此資料夾稱為“資源目錄”。
<br />

然後，使用任一方式“安裝”：

- 去[釋出頁面](https://github.com/NaitLee/xon-cn-ext/releases)下載相應文字的資源包（字尾為 `.pk3` ），放入資源目錄  
  然後，將資源包檔案*重新命名*為 `~xon-cn-ext.pk3`，注意開頭的波浪號

- 也可以*在資源目錄*克隆此倉庫：`git clone https://github.com/NaitLee/xon-cn-ext`  
  然後，將倉庫資料夾*重新命名*為 `~xon-cn-ext.pk3dir`  
  並在倉庫切換至相應文字的分支：`git checkout zh-cn/zh-tw/main`

之後，可考慮：

- 獲取最新的 Xonotic 標準翻譯資源，點選下載：[簡](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/raw/master/common.zh_CN.po?inline=false) | [正](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/raw/master/common.zh_TW.po?inline=false)\*，放入資源目錄，以獲得最新的翻譯進度與修正。

\* 正體翻譯尚不完備，請待其貢獻者完善之。或勉強使用 [OpenCC](https://github.com/BYVoid/OpenCC) 自簡體翻譯轉換。

- 如果預設的畫素字型（Unifont）不好看，可自定。將心儀的 `.ttf`（或 `.otf`）字型放入資源目錄，重新命名為 `font.ttf` （或 `font.otf`） 即可。  
  如，可從[此處](https://github.com/googlefonts/noto-cjk/releases)獲取合適的中日韓系列 Noto 字型，解壓並挑選合適的一款。

配置完畢後，啟動遊戲即可。

## 須知

此擴充套件包並不遵從遊戲語言設定。即，若您換到英文，此包的中文內容仍在。

此包的實現考慮了便攜性。即，可以把本包整合進 Xonotic 程式併發行，分享給朋友；或放入移動儲存介質，隨時隨地玩。

資源包檔案/目錄的命名以 `~` 開頭，是為了提高包的優先順序。DarkPlaces 引擎檢索資源包時以檔名排序、靠後的優先。

此包利用遊戲引擎機制直接覆蓋了原版檔案，其中大部分是*功能性*的，即會影響遊戲玩法。  
已在 Xonotic 0.8.5 及截至目前（2022 年 12 月 14 日）最新的 [git 編譯版本](https://gitlab.com/xonotic/xonotic/-/wikis/Repository_Access)測試，表現良好。  
若之後遊戲在受影響的檔案上有更新改動，使用此包時不會反映，且嚴重時可能導致衝突。  
（但目前可放心，暫無預計大幅更改。）

這裡的每一份檔案都是純文字檔案。如果有不當之處，不妨開啟它，動手糾正。  
其他分支的簡體、正體资源從傳統字使用 OpenCC 轉換而來。存在謬誤？或覺得某個翻譯如何更好？可以就此討論！

目前，由於遊戲上游 DarkPlaces 引擎的文字渲染方式存在不妥，使用中日韓語言時，遊戲會有明顯效能問題。  
可於[此處](https://github.com/DarkPlacesEngine/darkplaces/issues/49)詳細瞭解、跟蹤該缺陷。

## 授權

若無特殊宣告，這裡的檔案均以其對應“原版”檔案的協議釋出。

Xonotic 本身及大部分資源以 GNU GPLv3+ 授權，詳情在相關 COPYING 檔案有宣告。可在[官方倉庫](https://gitlab.com/xonotic/)蒐集瞭解。

## 計劃

- 漢語語音包！不過，遇到自告奮勇的播音員可能並非易事。
- 更簡便的使用方法

## 後記

分享是一種美德。Xonotic 是[尊重計算自由的](https://www.gnu.org/philosophy/free-sw.html)遊戲，與夥伴分享，和朋友同歡，不亦樂乎？

希望這份努力可以讓大家切實感受到軟體自由的必要性、社群合作帶來的豐富可能性。

願精神長存。
