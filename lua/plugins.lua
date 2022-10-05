vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim' --packer
  use { "catppuccin/nvim", as = "catppuccin" } --catpuccin theme
  use 'folke/tokyonight.nvim' --TOKYOOO
  use 'doums/darcula' --jetbrains darcula theme
  use { --lualine
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    'nvim-treesitter/nvim-treesitter', --text highlighting
    run = ':TSUpdate'
  }
  use {
    "williamboman/mason.nvim", --installer for lsp
    "williamboman/mason-lspconfig.nvim", --integration between mason and lspconfig
    "neovim/nvim-lspconfig", --language server protocol configuration plugin
  }
end)

