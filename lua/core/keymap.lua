local G, opt = require('G'), {noremap = true}

G.map({
{'n', '<leader>y', '"+y', opt},
{'n', '<leader>p', '"+p', opt},
{'n', '<leader>d', '"+d', opt},

{'v', '<leader>y', '"+y', opt},
{'v', '<leader>p', '"+p', opt},
{'v', '<leader>d', '"+d', opt},

{'n', '<leader>nh', ':nohlsearch<CR>', opt},
{'n', '<leader>rp', ':%s/',opt},

{'v', 'L', '$',                 opt},
{'v', 'H', '^',                 opt},
{'n', 'L', '$',                 opt},
{'n', 'H', '^',                 opt},

{'n', '>', '>>',                opt},
{'n', '<', '<<',                opt},
{'n', 'Q', ':q!<CR>',           opt},
{'n', '?', ':set hlsearch<CR>?', opt},
{'n', '/', ':set hlsearch<CR>/', opt},

{'n', '<A-l>', ':tabn<CR>',     opt},
{'n', '<A-h>', ':tabp<CR>',     opt},


{'n', '<c-j>', '<c-w>j',          opt},
{'n', '<c-h>', '<c-w>h',          opt},
{'n', '<c-k>', '<c-w>k',          opt},
{'n', '<c-l>', '<c-w>l',          opt},
{'n', '<c-c>', ':wq<CR>',         opt},


{'n', '<leader><leader>y', 'ggyG', opt},
{'n', '<leader><leader>p', 'ggpG', opt},
{'n', '<leader><leader>v', 'ggVG', opt},

{'n', '<up>',     ':res -5<CR>',             opt},
{'n', '<down>',   ':res +5<CR>',             opt},
{'n', '<left>',   ':vertical resize -5<CR>', opt},
{'n', '<right>',  ':vertical resize +5<CR>', opt},


-- lazygit
{'n', '<leader>g',  ':w<CR>:LazyGit<CR>',           {}},

--EasyAlign
{"v", "ga",         ":EasyAlign<CR>",              {silent = true}},

})

G.map({
-- easymotion
{'v', '<leader>f',  '<Plug>(easymotion-bd-f)',      {}},
{'n', '<leader>f',  '<Plug>(easymotion-overwin-f)', {}},
{'n', 's',          '<Plug>(easymotion-overwin-f2)',{}},
})








