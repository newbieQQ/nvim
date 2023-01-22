-- lazy插件自动安装插件
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--depth=1",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- 主题插件
  'nvim-lualine/lualine.nvim',
  'morhetz/gruvbox',

  -- lsp 补全
  {'neoclide/coc.nvim', branch = 'release'},

  -- surround 和 wildfire 配合有神奇的效果
  'tpope/vim-surround',
  'gcmt/wildfire.vim',

  -- easymotion
 'easymotion/vim-easymotion',

  -- 格式整理
  'junegunn/vim-easy-align',
 'preservim/nerdcommenter',

  --颜色识别
  'lilydjwg/colorizer',

  --markdown

  -- git
  'kdheepak/lazygit.nvim',
})







