[简体中文](./README.md) | English & Worldwide Notes

**To worldwide people**

This is a “Xonotic Extended Language Pack” for Simplified Chinese.

If desired, you can continue reading to learn about how this works, and make one in your own language.

# Xonotic Extended Language Pack

**For Simp. Chinese**

This repository contains a small portion of modified [Xonotic](https://xonotic.org/) assets, achieved “extended translation” of Simp. Chinese in a non-standard way, in order to improve gaming experience of domestic players.

## Content

Currently it covers:

- Description of single-player Campaigns
- Name and Descriptions of each official maps
- Nickname of the Bots
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

- Go to [releases](https://github.com/NaitLee/xon-chs-ext/releases) and fetch a `.pk3` file, put to data directory.

- Or, `cd` to data directory and clone this repository: `git clone https://github.com/NaitLee/xon-chs-ext`  
  And *rename* the repository folder as `~xon-chs-ext.pk3dir`

After that, optionally:

- Get the newest vanilla Simp. Chinese translation file of Xonotic, [click here to download](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/raw/master/common.zh_CN.po?inline=false), put to data directory, to gather newest progress & corrections inside.

- If the default pixel font (Unifont) isn’t beautiful, customize it. Get Noto CJK fonts from [here](https://github.com/googlefonts/noto-cjk/releases) (for this pack, recommends [Subset OTFs of Simp. Chinese](https://github.com/googlefonts/noto-cjk/releases/download/Sans2.004/18_NotoSansSC.zip)), decompress, pick a satisfying variant, put to data directory and rename it as `font.otf`.

Finally, start the game and enjoy.

## Acknowledgements

This extension pack doesn’t respect in-game language settings. Thus, if you use e.g. English, Chinese content will still be there.

Implementation of the pack have considered portability. Thus, it's possible to mix & republish it with Xonotic, share it with local friends; or put to a U-disk and play anywhere anytime.

To increase priority of this pack, filename of which starts with `~`. When DarkPlaces engine query files, packs are sorted by name, later ones take more priority.

This pack directly overrides vanilla game assets under engine mechanism. Most of the assets are *functional*, i.e. they affects the gameplay.  
Tested in Xonotic 0.8.5 and [latest git version](https://gitlab.com/xonotic/xonotic/-/wikis/Repository_Access) (Sep. 1, 2022), behaving well.  
If affected assets are updated in later time, this pack will invalidate them, and conflict may occur if things go severe.  
But no problem at the moment, expected big change is to remove 2 maps, delete related `.mapinfo` files when that happen.

All files here are plain text files. If you’ve found something inappropriate, don’t hesitate to open it and correct.  
Better translation in your mind? Discuss it here!

Currently there will be performance problem when gaming in CJK language, because font-rendering of upstream DarkPlaces engine is unfriendly to that.  
Learn more & track the bug [here](https://github.com/DarkPlacesEngine/darkplaces/issues/49).

## License

Without explicit statement, files here are published in license of their corresponding “original” file.  
For example, Xonotic itself is in GNU GPLv2+, and some maps are in GNU GPLv3+, etc.

If a file is independent to vanilla, it’s released under GNU GPLv2+.

You can seek & learn from [Official repository](https://gitlab.com/xonotic/) for details.

## Plans

- Chinese Vocal Pack! But meeting a brave broadcaster may not be easy.
- Easier way to use the pack

## Postscript

Sharing is a beautiful moral behavior. Xonotic is a game which [respects your computing freedom](https://www.gnu.org/philosophy/free-sw.html), share it with mates, play together with friends, enjoy happiness!

Wish this effort could remind people how essential is Software Freedom, and the unlimited possibility of community works.

Hope the spirit persists.
