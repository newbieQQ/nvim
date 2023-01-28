local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()
local G = require('G')
return require('packer').startup(function(use)

  -- 主题插件
  use 'nvim-lualine/lualine.nvim'
  use 'morhetz/gruvbox'

  -- lsp 补全
  use {'neoclide/coc.nvim', branch = 'release'}

  -- surround 和 wildfire 配合有神奇的效果
  use 'tpope/vim-surround'
  use 'gcmt/wildfire.vim'
      -- easymotion
  use 'easymotion/vim-easymotion'

  -- 格式整理
  use 'junegunn/vim-easy-align'
  use 'preservim/nerdcommenter'

  --颜色识别
  use 'lilydjwg/colorizer'

  --markdown
  use 'iamcco/markdown-preview.nvim'

  -- git
  use 'kdheepak/lazygit.nvim'

end)






