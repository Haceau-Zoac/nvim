return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- nvim-tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }
  -- lspconfig
  use {
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer'
  }
  -- nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  -- LuaSnip 
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  -- lspkind
  use 'onsails/lspkind-nvim'
  -- lsp-colors
  use 'folke/lsp-colors.nvim'
  -- neovim-cmake
  use 'nvim-lua/plenary.nvim'
  use 'mfussenegger/nvim-dap'
  use 'Shatur/neovim-cmake'
  -- markdown-preview.nvim
  use 'iamcco/markdown-preview.nvim'
  -- vim-commentary
  use 'tpope/vim-commentary'
  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
end)
