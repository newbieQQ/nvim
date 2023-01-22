local map = vim.api.nvim_set_keymap
local openPreview = ":CocCommand markdown-preview-enhanced.openPreview<CR>"

map('n', '<leader>r', openPreview, {noremap = false})
