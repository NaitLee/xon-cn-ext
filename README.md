
| [简体中文](../zh-cn/README.md) | [正体中文](../zh-tw/README.md) | [传统字中文](../main/README.md) | [English & Worldwide Notes](./README.en-US.md)

# Xonotic 扩展汉化包

此仓库包含小部分对 [Xonotic](https://xonotic.org/) 资源​文件的修改版，使用非标准方式达到覆盖面更广的汉化，方便英语不熟练的玩家提升游戏体验。

可继续阅读，以了解更多。

## 内容

目前已覆盖：

- 单人任务的详细描述
- 各官方地图的名称与描述
- 机器人玩家名称（*不是*音译，贴近英文名意）
- 小部分实用控制台指令/变量的解释

## 使用

首先要了解，在 Xonotic 游戏目录，有一文件夹 `data`，其中存放着游戏资源。

```
Xonotic/
  ├── bin32
  ├── bin64
  ├── data  <-- 这里
  │   ├── font-xolonium-20220627.pk3
  │   ├── xonotic-20220627-data.pk3
  │   ├── xonotic-20220627-maps.pk3
  │   └── ...
  ├── ...
  ├── xonotic-dedicated.exe
  ├── xonotic.exe
  └── ...
```

下文将此文件夹称为“资源目录”。
<br />

然后，使用任一方式“安装”：

- 去[发布页面](https://github.com/NaitLee/xon-cn-ext/releases)下载相应文字的资源包（后缀为 `.pk3` ），放入资源目录  
  然后，将资源包文件*重命名*为 `~xon-cn-ext.pk3`，注意开头的波浪号

- 也可以*在资源目录*克隆此仓库：`git clone https://github.com/NaitLee/xon-cn-ext`  
  然后，将仓库文件夹*重命名*为 `~xon-cn-ext.pk3dir`  
  并在仓库切换至相应文字的分支：`git checkout zh-cn/zh-tw/main`

之后，可考虑：

- 获取最新的 Xonotic 标准翻译资源，点击下载：[简](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/raw/master/common.zh_CN.po?inline=false) | [正](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/raw/master/common.zh_TW.po?inline=false)\*，放入资源目录，以获得最新的翻译进度与修正。

\* 正体翻译尚不完备，请待其贡献者完善之。或勉强使用 [OpenCC](https://github.com/BYVoid/OpenCC) 自简体翻译转换。

- 如果默认的像素字体（Unifont）不好看，可自定。将心仪的 `.ttf`（或 `.otf`）字体放入资源目录，重命名为 `font.ttf` （或 `font.otf`） 即可。  
  如，可从[此处](https://github.com/googlefonts/noto-cjk/releases)获取合适的中日韩系列 Noto 字体，解压并挑选合适的一款。

配置完毕后，启动游戏即可。

## 须知

此扩展包并不遵从游戏语言设定。即，若您换到英文，此包的中文内容仍在。

此包的实现考虑了便携性。即，可以把本包整合进 Xonotic 程序并发行，分享给朋友；或放入移动存储介质，随时随地玩。

资源包文件/目录的命名以 `~` 开头，是为了提高包的优先级。DarkPlaces 引擎检索资源包时以文件名排序、靠后的优先。

此包利用游戏引擎机制直接覆盖了原版文件，其中大部分是*功能性*的，即会影响游戏玩法。  
已在 Xonotic 0.8.5 及截至目前（2022 年 12 月 14 日）最新的 [git 编译版本](https://gitlab.com/xonotic/xonotic/-/wikis/Repository_Access)测试，表现良好。  
若之后游戏在受影响的文件上有更新改动，使用此包时不会反映，且严重时可能导致冲突。  
（但目前可放心，暂无预计大幅更改。）

这里的每一份文件都是纯文本文件。如果有不当之处，不妨打开它，动手纠正。  
其他分支的简体、正体资源从传统字使用 OpenCC 转换而来。传统字版本使用简体用词。  
存在谬误？或觉得某个翻译如何更好？可以就此讨论！

目前，由于游戏上游 DarkPlaces 引擎的文字渲染方式存在不妥，使用中日韩语言时，游戏会有明显性能问题。  
可于[此处](https://github.com/DarkPlacesEngine/darkplaces/issues/49)详细了解、跟踪该缺陷。

## 授权

若无特殊声明，这里的文件均以其对应“原版”文件的协议发布。

Xonotic 本身及大部分资源以 GNU GPLv3+ 授权，详情在相关 COPYING 文件有声明。可在[官方仓库](https://gitlab.com/xonotic/)搜集了解。

另外，仓库带有一份自制的、用于 OpenCC 的配置文件 `t2twp.json`，它以 OpenCC 本身的协议 [Apache 2.0](https://github.com/BYVoid/OpenCC/blob/master/LICENSE) 发布。

## 计划

- 汉语语音包！不过，遇到自告奋勇的播音员可能并非易事。
- 更简便的使用方法

## 后记

分享是一种美德。Xonotic 是[尊重计算自由的](https://www.gnu.org/philosophy/free-sw.html)游戏，与伙伴分享，和朋友同欢，不亦乐乎？

希望这份努力可以让大家切实感受到软件自由的必要性、社区合作带来的丰富可能性。

愿精神长存。
