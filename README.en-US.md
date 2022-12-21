
| [Simplified Chinese](../zh-cn/README.md) | [Traditional Chinese (Taiwan)](../zh-tw/README.md) | [Traditional Chinese (Hong Kong)](../zh-hk/README.md) | [Traditional Chinese (Classic)](../main/README.md) | [English & Worldwide Notes](./README.en-US.md)

**To worldwide people**

This is a “Xonotic Extended Language Pack” for Simplified & Traditional Chinese.

If desired, you can continue reading to learn about how the idea works, and make one in your own language.

# Xonotic Extended Language Pack

This repository contains a small portion of modified [Xonotic](https://xonotic.org/) assets, achieved “extended translation” of Chinese in a non-standard way, in order to improve gaming experience of domestic players.

## Content

Currently it covers:

- Description of single-player Campaigns
- Name and Descriptions of each official maps
- Nickname of the Bots (that are close to their English meaning)
- Description of a few useful console commands/variables

## Usage

First, in Xonotic game directory, there’s a folder called `data`, inside which are game assets.

```
Xonotic/
  ├── bin32
  ├── bin64
  ├── data  <-- HERE
  │   ├── font-xolonium-20220627.pk3
  │   ├── xonotic-20220627-data.pk3
  │   ├── xonotic-20220627-maps.pk3
  │   └── ...
  ├── ...
  ├── xonotic-dedicated.exe
  ├── xonotic.exe
  └── ...
```

The following context will refer this path as “data directory”.
<br />

Then, “install” the pack:

- Go to [releases](https://github.com/NaitLee/xon-chs-ext/releases) and fetch a `.pk3` file (of `zh-cn` or `zh-tw`, according to your preference), put to data directory

- **Or**, `cd` to data directory and clone this repository: `git clone https://github.com/NaitLee/xon-chs-ext`  
  Then, *rename* the repository folder as `~xon-chs-ext.pk3dir`  
  After that, switch to corresponding branch: `git checkout zh-cn/zh-tw/main`

After that, **optionally**:

- Get the newest vanilla Chinese translation file of Xonotic: [`zh-CN`](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/raw/master/common.zh_CN.po?inline=false) | [`zh-TW`](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/raw/master/common.zh_TW.po?inline=false)\* | [`zh-HK`](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/raw/master/common.zh_HK.po?inline=false)\*, put to data directory, to gather newest progress & corrections inside.

- If the default pixel font (Unifont) isn’t beautiful, customize it. Put your favorite `.ttf` (or `.otf`) font to data directory, and rename it as `font.ttf` (or `font.otf`).  
  For example, get suitable Noto CJK fonts from [here](https://github.com/googlefonts/noto-cjk/releases), decompress and pick a satisfying variant,

Finally, start the game and enjoy ✔

----

\* Please note that, for the completion of Simplified Chinese translation is done all by my self, while other variants didn’t move forward, I decided to:

- Convert the complete Simplified translation to Traditional Character variant with OpenCC, and fix (conversion) mistakes *manually*, then regard the result as “Unified translation” (the file isn’t public yet), convert Simplified translation from which in the future

- Summarize phrase differences (between `zh-CN` and `zh-TW`) from the original TW translation (see file `patch-twp.sed`), and *gather good works from it* to Unified translation, then convert to TW variant that is *almost OK*

- Concluded by browsing some webpages, there shouldn’t be much phrase differences between `zh-CN` and `zh-HK`, hence it’s converted directly from Unified translation (i.e. only a few characters are converted), filling the 0% hole

## Acknowledgements

This extension pack doesn’t respect in-game language settings. Thus, if you use e.g. English, Chinese content will still be there.

Implementation of the pack have considered portability. Thus, it's possible to mix & redistribute it with Xonotic, share it with friends; or put to a portable storage and play anywhere anytime.

To increase priority of this pack, filename of which starts with `~`. When DarkPlaces engine queries files, packs are sorted by name, later ones take more priority.  
The released packs have filenames starting with `z`, which already takes higher precedence than the original data file’s `x`, thus no need to rename (anymore).

This pack directly overrides vanilla game assets under engine mechanism. Most of the assets are *functional*, i.e. they affects the gameplay.  
Tested in Xonotic 0.8.5 and [latest git version](https://gitlab.com/xonotic/xonotic/-/wikis/Repository_Access) (Dec. 14, 2022), behaving well.  
If affected assets are updated in later time, this pack will invalidate them, and conflict may occur if things go severe.  
(But no problem at the moment, expecting no large-scale changes at the moment.)

All files here are plain text files. If you’ve found something inappropriate, don’t hesitate to open it and do corrections.  
Translations in other branches are converted from Traditional Characters (in `main`) with OpenCC & sed. Phrase habit is of Simplified Chinese. You can know more from file `0-convert.sh`.  
Something is wrong? Better translation in your mind? Discuss it here!

Currently there is a notable performance problem when gaming in CJK language, because font-rendering of upstream DarkPlaces engine is unfriendly to that.  
Learn more & track the bug [here](https://github.com/DarkPlacesEngine/darkplaces/issues/49).

## License

Without explicit statement, files here are published in license of their corresponding “original” file.

Xonotic itself and most of its assets are in GNU GPLv3+, see related COPYING file for detail. You can seek & learn from [Official repository](https://gitlab.com/xonotic/) for details.

Except that, there’s a custom OpenCC configuration `t2twp.json`, which is released under [Apache 2.0](https://github.com/BYVoid/OpenCC/blob/master/LICENSE), as like OpenCC itself; sed files for characters & phrases conversion are in Public Domain.

## Plans

- Chinese Vocal Pack! But meeting a brave broadcaster may not be easy.
- Easier way to use the pack

## Postscript

Sharing is a beautiful moral behavior. Xonotic is a game which [respects your computing freedom](https://www.gnu.org/philosophy/free-sw.html), share it with mates, play together with friends, enjoy happiness!

Wish this effort could remind people how essential is Software Freedom, and the unlimited possibility of community works.

Hope the spirit persists.
