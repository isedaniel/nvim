-- make protected calls
local status_ok, lush = pcall(require, 'lush')
if not status_ok then
  return
end

local status_ok, darcula_solid = pcall(require, 'lush_theme.darcula-solid')
if not status_ok then
  return
end

return

-- define the customize specs
local specs = lush.extends({darcula_solid}).with(function()
  return {
    -- use default values for comments, but change the gui to regular
    Comment { fg = darcula_solid.Comment.fg, 
              bg = darcula_solid.Comment.bg, 
              gui = "regular"
    },
  }
end)

-- define a customise function
_G.customise_colorscheme = function()
  lush(specs)
end

-- use an autocommand that changes the colorscheme on VimEnter
vim.cmd[[autocmd VimEnter,ColorScheme * lua customise_colorscheme()]]

-- set the colorscheme
vim.cmd[[colorscheme darcula-solid]]

