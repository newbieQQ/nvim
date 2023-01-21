vim.cmd([[
      let g:coc_global_extensions = [
      \ 'coc-clangd',              -- clangd补 
      \ 'coc-lua',                 -- lua补全
      \ 'coc-python',              -- python补 
      \ 'coc-json',                -- json补全
      \                                        
      \ 'coc-translator',          -- 翻译插件
      \ 'coc-yank',                -- 剪切板
      \ 'coc-pairs',               -- 括号补全
      \ 'coc-explorer',            -- 文件管理
      \ 'coc-list',
      \ ]
]])

local map = vim.api.nvim_set_keymap
-- coc 设置
-- Autocomplete
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end


-- Use Tab for trigger completion with characters ahead and navigate
-- NOTE: There's always a completion item selected by default, you may want to enable
-- no select by setting `"suggest.noselect": true` in your configuration file
-- NOTE: Use command ':verbose imap <tab>' to make sure Tab is not mapped by
-- other plugins before putting this into your config
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
map("i", "<TAB>",   [[ coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh() ]] , opts)
map("i", "<S-TAB>", [[ coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>" ]], opts)
-- Make <CR> to accept selected completion item or notify coc.nvim to format
-- <C-g>u breaks current undo, please make your own choice
map("i", "<cr>", [[ coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>" ]], opts)


