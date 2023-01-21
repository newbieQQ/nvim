# 打造自己nvim
## 文件夹结构
.
├── coc-settings.json             -- coc的设置文件
├── init.lua                      -- nvim读取的配置文件
├── lazy-lock.json                -- 插件管理工具的json包
├── lua
│   ├── coc.lua                   -- coc的配置 
│   ├── keymap.lua                -- 改建位的配置
│   ├── options.lua               -- 设置
│   └── plug.lua                  -- 插件设置
└── README.md

leader键位的设置为空格

## coc的配置
```lua
vim.cmd([[
      let g:coc_global_extensions = [
      \ 'coc-clangd',        -- clangd补全
      \ 'coc-lua',           -- lua补全
      \ 'coc-python',        -- python补全
      \ 'coc-json',          -- json补全
      \
      \ 'coc-translator',    -- 翻译插件
      \ 'coc-yank',          -- 剪切板
      \ 'coc-pairs',         -- 括号补全
      \ 'coc-explorer',      -- 文件管理
      \ 'coc-list',          -- 
      \ ]
]])
```
## 键位设置
**复制系列:**
```lua 
-- 从系统寄存器
<leader>y = "+y
<leader>p = "+p
<leader>d = "+d
```
**搜索替换系列：**
```lua
?          = :set hlsearch<CR>?
/          = :set hlsearch<CR>/
<c-n>      = :nohlsearch<CR>

<leader>rp = :%s/
```

























