local G = require('G')

-- 行号
G.opt.nu            = true
G.opt.rnu           = true
G.opt.scrolloff     = 999

-- 自动保存
G.opt.autowrite     = true
G.opt.autowriteall  = true

-- tab键
G.opt.sw            = 2
G.opt.ts            = 2
G.opt.softtabstop   = 2
G.opt.smarttab      = true
G.opt.expandtab     = true
G.opt.autoindent    = true

-- 光标
G.opt.cursorline    = true

-- 分屏
G.opt.splitright    = true
G.opt.splitbelow    = true

-- 搜索
G.opt.ignorecase    = true
G.opt.incsearch     = true

-- 不换行
G.opt.textwidth     = 999
G.opt.wrap          = false

-- 背景
G.opt.background    = 'dark'

-- 主题
G.cmd("colorscheme gruvbox")

-- 文件判断
G.cmd("filetype plugin indent on")

-- 取消换行注释
G.api.nvim_create_autocmd({ "BufEnter" }, {
	pattern = { "*" },
	callback = function()
		-- vim.opt.formatoptions = vim.opt.formatoptions - { "c", "r", "o" }
		  G.opt.formatoptions = G.opt.formatoptions
		 	- "o" -- O and o, don't continue comments
			+ "r" -- But do continue when pressing enter.
	end,
})

G.api.nvim_create_autocmd( {"FileType"}, {
    pattern = "markdown",
    callback = function() 
      require('Filetype.markdown')
      --G.cmd('MarkdownPreview')
    end
  }
)


