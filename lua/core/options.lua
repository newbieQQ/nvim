local set= vim.opt
-- 行号
set.nu            = true
set.rnu           = true
set.scrolloff     = 999

-- 自动保存
set.autowrite     = true
set.autowriteall  = true

-- tab键
set.sw            = 2
set.ts            = 2
set.softtabstop   = 2
set.smarttab      = true
set.expandtab     = true
set.autoindent    = true

-- 光标
set.cursorline    = true

-- 分屏
set.splitright    = true
set.splitbelow    = true

-- 搜索
set.ignorecase    = true
set.incsearch     = true

-- 不换行
set.textwidth     = 999
set.wrap          = false

-- 背景
set.background    = 'dark'

-- 主题
vim.cmd("colorscheme gruvbox")

-- 输入法自动根据模式自动切换
vim.cmd([[ au InsertLeave * :silent !fcitx5-remote -c ]])

-- 文件判断
vim.cmd([[ filetype plugin on ]])

-- 取消换行注释
vim.api.nvim_create_autocmd({ "BufEnter" }, {
	pattern = { "*" },
	callback = function()
		-- vim.opt.formatoptions = vim.opt.formatoptions - { "c", "r", "o" }
		vim.opt.formatoptions = vim.opt.formatoptions
			- "o" -- O and o, don't continue comments
			+ "r" -- But do continue when pressing enter.
	end,
})






















