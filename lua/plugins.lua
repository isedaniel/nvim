vim.cmd [[packadd packer.nvim]]
vim.g.catppuccin_flavour = "macchiato"

return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim' --packer
  use { "catppuccin/nvim", as = "catppuccin" } --catpuccin theme
  use 'folke/tokyonight.nvim' --TOKYOOO
  use { --lualine
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
end)

