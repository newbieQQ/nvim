local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- 主题插件
  'vim-airline/vim-airline',
  'morhetz/gruvbox',

  -- lsp 补全
  {'neoclide/coc.nvim', branch = 'release'},

  -- surround 和 wildfire 配合有神奇的效果
  'yaocccc/vim-surround',
  'gcmt/wildfire.vim',

  -- easymotion
 'easymotion/vim-easymotion',

  -- 格式整理
  'junegunn/vim-easy-align',
  'scrooloose/nerdcommenter',

  --颜色识别
  'lilydjwg/colorizer',

  --markdown
  'dhruvasagar/vim-table-mode',
  'mzlogin/vim-markdown-toc',
  'dkarter/bullets.vim',

  -- lazygit
  'kdheepak/lazygit.nvim',

  -- which key
  'liuchengxu/vim-which-key',
})








