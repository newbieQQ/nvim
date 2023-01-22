local map = vim.api.nvim_set_keymap

map('n', '<leader>y', '"+y', {noremap = true})
map('n', '<leader>p', '"+p', {noremap = true})
map('n', '<leader>d', '"+d', {noremap = true})

map('v', '<leader>y', '"+y', {noremap = true})
map('v', '<leader>p', '"+p', {noremap = true})
map('v', '<leader>d', '"+d', {noremap = true})

map('n', '<leader>nh', ':nohlsearch<CR>', {noremap = true})
map('n', '<leader>rp',':%s/',{noremap = true})

map('n', 'L', '$',                 {noremap = true})
map('n', 'H', '^',                 {noremap = true})
map('n', '>', '>>',                {noremap = true})
map('n', '<', '<<',                {noremap = true})
map('n', 'Q', ':q!<CR>',           {noremap = true})
map('n', '?', ':set hlsearch<CR>?', {noremap = true})
map('n', '/', ':set hlsearch<CR>/', {noremap = true})

map('n', '<A-l>', ':tabn<CR>',     {noremap = true})
map('n', '<A-h>', ':tabp<CR>',     {noremap = true})


map('n', '<c-j>', '<c-w>j',          {noremap = true})
map('n', '<c-h>', '<c-w>h',          {noremap = true})
map('n', '<c-k>', '<c-w>k',          {noremap = true})
map('n', '<c-l>', '<c-w>l',          {noremap = true})
map('n', '<c-c>', ':wq<CR>',         {noremap = true})


map('n', '<leader><leader>y', 'ggyG', {noremap = true})
map('n', '<leader><leader>p', 'ggpG', {noremap = true})
map('n', '<leader><leader>v', 'ggVG', {noremap = true})

map('n', '<up>',     ':res -5<CR>',             {noremap = true})
map('n', '<down>',   ':res +5<CR>',             {noremap = true})
map('n', '<left>',   ':vertical resize -5<CR>', {noremap = true})
map('n', '<right>',  ':vertical resize +5<CR>', {noremap = true})

-- 快速注释
map('n', '<leader>/',  '<leader>c<space>',      {noremap = true})

-- easymotion
map('v', '<leader>f',  '<Plug>(easymotion-bd-f)',      {})
map('n', '<leader>f',  '<Plug>(easymotion-overwin-f)', {})
map('n', 's',          '<Plug>(easymotion-overwin-f2)',{})

-- lazygit
map('n', '<leader>g',  ':w<CR>:LazyGit<CR>',           {})


--EasyAlign
map("v", "ga",         ":EasyAlign<CR>",              {silent = true})





















