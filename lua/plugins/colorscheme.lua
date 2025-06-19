-- tokyonight colorscheme
return {
  'folke/tokyonight.nvim',
  priority = 1000,
  config = function()
    require('tokyonight').setup({
      -- for more contrast
      transparent = true,
    })
    vim.cmd.colorscheme 'tokyonight'
  end
}

