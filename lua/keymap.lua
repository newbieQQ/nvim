local map = vim.api.nvim_set_keymap

map('n', '<leader>y', '"+y', {noremap = true})
map('n', '<leader>p', '"+p', {noremap = true})
map('n', '<leader>d', '"+d', {noremap = true})

map('n', 'L', '$',                 {noremap = true})
map('n', 'H', '^',                 {noremap = true})
map('n', '>', '>>',                {noremap = true})
map('n', '<', '<<',                {noremap = true})
map('n', 'Q', ':q!<CR>',           {noremap = true})
map('n', '?', 'set hlsearch<CR>?', {noremap = true})
map('n', '/', 'set hlsearch<CR>/', {noremap = true})
map('n', '<c-s-j>', '5j',         {noremap = true})
map('n', '<c-s-k>', '5k',         {noremap = true})


map('n', '<c-n>', ':nohlsearch<CR>', {noremap = true})
map('n', '<c-j>', '<c-w>j',    {noremap = true})
map('n', '<c-h>', '<c-w>h',    {noremap = true})
map('n', '<c-k>', '<c-w>k',    {noremap = true})
map('n', '<c-l>', '<c-w>l',    {noremap = true})
map('n', '<c-c>', ':wq<CR>',         {noremap = true})


map('n', '<leader><leader>y', 'ggyG', {noremap = true})
map('n', '<leader><leader>p', 'ggpG', {noremap = true})
map('n', '<leader><leader>v', 'ggVG', {noremap = true})

map('n', '<up>',     ':res -5<CR>',             {noremap = true})
map('n', '<down>',   ':res +5<CR>',             {noremap = true})
map('n', '<left>',   ':vertical resize -5<CR>', {noremap = true})
map('n', '<right>',  ':vertical resize +5<CR>', {noremap = true})










