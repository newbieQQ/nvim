<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->
# 从零开始打造属于自己的nvim

## 如何在不同的系统安装
### arch系
```bash
sudo pacman -S neovim nodejs npm
```

### ubuntu系
```bash
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get update
sudo apt-get install -y nodejs
sudo apt-get install neovim
```

## 文件结构
```
.
├── coc-settings.json
├── init.lua
├── lua
│   ├── core
│   │   ├── filetype.lua
│   │   ├── keymap.lua
│   │   ├── options.lua
│   │   └── plug.lua
│   ├── Filetype
│   │   ├── c.lua
│   │   ├── markdown.lua
│   │   └── vue.lua
│   ├── G.lua
│   └── Plugin
│       ├── ale.lua
│       ├── coc.lua
│       ├── hlchunk.lua
│       ├── Imchange.lua
│       ├── lualine.lua
│       └── treesitter.lua
├── plugin
│   └── packer_compiled.lua
└── README.md
```
