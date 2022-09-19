local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  -- My plugins here
  use 'wbthomason/packer.nvim' -- packer can manage itself

  use 'ellisonleao/gruvbox.nvim'

  -- lsp
  use "neovim/nvim-lspconfig"
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  use({"L3MON4D3/LuaSnip", tag = "v1.*"})

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }


  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

