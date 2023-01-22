local map = vim.api.nvim_set_keymap
local openPreview = ":CocCommand markdown-preview-enhanced.openPreview<CR>:CocCommand markdown-preview-enhanced.openPreviewBackground<CR>"

map('n', '<leader>r', openPreview, {noremap = false})
