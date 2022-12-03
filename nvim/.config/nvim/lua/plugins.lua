local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  -- My plugins here
  use 'wbthomason/packer.nvim' -- packer can manage itself

  use "nvim-lua/plenary.nvim" -- lua functions that many plugins use

  use "rebelot/kanagawa.nvim" --colorscheme

  use { 'nvim-telescope/telescope.nvim', tag = '0.1.x', }

  -- lsp
  use "neovim/nvim-lspconfig"
  use 'hrsh7th/cmp-nvim-lsp'
  use "ray-x/lsp_signature.nvim" -- show function signature when you type
  use 'onsails/lspkind-nvim' -- vscode-like pictograms to neovim built-in lsp

   -- managing & installing lsp servers, linters & formatters
  use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
  use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

  -- autocompletion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'

  --snippets
  use({"L3MON4D3/LuaSnip", tag = "v1.*"})
  use "saadparwaiz1/cmp_luasnip"

  use({
    "jose-elias-alvarez/null-ls.nvim",
    config = function() require("null-ls").setup() end,
  })
  use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls


  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  use 'nvim-tree/nvim-web-devicons'

  use {
    'nvim-lualine/lualine.nvim'
  }

  use {
    'numToStr/Comment.nvim',
    config = function() require('Comment').setup() end
  }
  use({
    "kylechui/nvim-surround",
    config = function() require("nvim-surround").setup() end
  })

  use {
    'TimUntersberger/neogit',
    requires = {
      'sindrets/diffview.nvim'
    }
  }
  use {
    'sindrets/diffview.nvim',
  }

  use {
    "nvim-neotest/neotest",
    requires = {
      "nvim-treesitter/nvim-treesitter",
      "jfpedroza/neotest-elixir",
    }
  }
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

