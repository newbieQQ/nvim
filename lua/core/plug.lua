local G = require('G')
local ensure_packer = function()
  local fn = G.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    G.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)

  -- 防止被自己clean
  use 'wbthomason/packer.nvim'

  -- 主题插件
  use 'nvim-lualine/lualine.nvim'
  use 'morhetz/gruvbox'
  use 'yaocccc/nvim-hlchunk'

  -- lsp 补全以及语法高亮
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'nvim-treesitter/nvim-treesitter'

  -- surround 和 wildfire 配合有神奇的效果
  use 'tpope/vim-surround'
  use 'gcmt/wildfire.vim'

  -- easymotion
  use 'easymotion/vim-easymotion'

  -- 格式整理
  use 'junegunn/vim-easy-align'
  use 'tpope/vim-commentary'

  --颜色识别
  use 'lilydjwg/colorizer'

  --markdown
  use 'vimwiki/vimwiki'
  use 'iamcco/markdown-preview.nvim'

  -- git
  use 'kdheepak/lazygit.nvim'

  -- 文件搜索
  use {'junegunn/fzf'}

  -- vue语法高亮
  use 'posva/vim-vue'

  -- 多光标
  use 'terryma/vim-multiple-cursors'

end)






