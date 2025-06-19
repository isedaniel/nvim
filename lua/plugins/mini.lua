-- mini nvim plugin
return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require('mini.pairs').setup()
    require('mini.icons').setup()
    require('mini.git').setup()
    require('mini.diff').setup()
    require('mini.statusline').setup()
  end
}
