local lazypath = '~/.config/nvim/lua/lazy/lazy.lua'

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--depin=1",
    "https://github.com/newbieQQ/lazy.nvim.git",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- 主题插件
  'vim-airline/vim-airline',
  'morhetz/gruvbox',

  {'neoclide/coc.nvim', branch = 'release'},
  'jiangmiao/auto-pairs',

  -- surround 和 wildfire 配合有神奇的效果
  'yaocccc/vim-surround',
  'gcmt/wildfire.vim',

  -- 格式整理
  'junegunn/vim-easy-align',
  'scrooloose/nerdcommenter',

  --颜色识别
  'lilydjwg/colorizer',

  --markdown
  'suan/vim-instant-markdown',
  'dhruvasagar/vim-table-mode',
  'mzlogin/vim-markdown-toc',
  'dkarter/bullets.vim'
})








