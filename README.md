<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->
# 从零开始打造属于自己的nvim

## 如何在不同的系统安装
### arch系
---
```bash
sudo pacman -S neovim nodejs npm
```

### ubuntu系
---
```bash
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get update
sudo apt-get install -y nodejs
sudo apt-get install neovim
```

## 文件结构
---
```
├── coc-settings.json
├── init.lua
├── lua
│   ├── core
│   │   ├── keymap.lua
│   │   ├── options.lua
│   │   └── plug.lua
│   ├── Filetype
│   │   ├── c.lua
│   │   └── markdown.lua
│   ├── G.lua
│   └── Plugin
│       ├── coc.lua
│       ├── Imchange.lua
│       └── lualine.lua
└── README.md
```
## vim-surround插件
---
`"Hello world"`
1.使用 `cs”‘` 效果如下:

`'Hello world'`
2.使用 `cs'<q>` 效果如下:

`<q>Hello world</q>`
3.使用 `cst"`  效果如下:

`"Hello world"`
4.使用 `ds”` 效果如下:

`Hello world`
5.使用 `ys{$xx}"` {$xx}是一个文本对象：

例如: 

`Hello world` 使用 `ysiw“`效果如下：`"Hello" world`

`Hello world` 使用 `ys2w“`效果如下：`"Hello world"`

## wildfire.vim插件
---
按下回车可以快速选择一个文本对象（段落)
```
Press <ENTER> in normal mode to 
select the closest text object.
```
使用它可以使用i”,i'等快速选择“或者’内的文本({[]})都可以
## wildfire 和surround的配合

可以使用 `ni)`选择多括号内东西

![官方给的gif](https://raw.githubusercontent.com/gcmt/wildfire.vim/master/_assets/preview.gif)

## Markdow-preview
下载后需要到插件目录下使用`npm install`或者`yarn install`
