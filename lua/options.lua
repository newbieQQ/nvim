-- 行号
vim.o.nu            = true
vim.o.rnu           = true
vim.o.scrolloff     = 999

-- 自动保存
vim.o.autowrite     = true
vim.o.autowriteall  = true

-- tab键
vim.o.sw            = 2
vim.o.ts            = 2
vim.o.softtabstop   = 2
vim.o.smarttab      = true
vim.o.expandtab     = true
vim.o.autoindent    = true

-- 光标
vim.o.cursorline    = true

-- 分屏
vim.o.splitright    = true
vim.o.splitbelow    = true

-- 搜索
vim.o.ignorecase    = true
vim.o.incsearch     = true

-- 不换行
vim.o.textwidth     = 999
vim.o.wrap          = false

-- 背景
vim.g.bg            = dark
vim.cmd([[colorscheme gruvbox]])

-- 输入法自动根据模式自动切换
vim.cmd([[ au InsertLeave * :silent !fcitx5-remote -c ]])

-- 文件判断
vim.cmd([[ filetype plugin on ]])
