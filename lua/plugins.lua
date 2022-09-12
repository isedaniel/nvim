vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim' --packer
  use 'folke/tokyonight.nvim' --TOKYOOO
  vim.cmd[[colorscheme tokyonight]]
  use { --lualine
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  require('lualine').setup {
    options = {
      icons_enabled = true,
      theme = auto,
    }
  }
end)

