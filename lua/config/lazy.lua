local lazypath = vim.fn.stdpath('data') .. '\\lazy\\lazy.nvim'

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

-- prepend lazy path to neovim runtime path
vim.opt.runtimepath:prepend(lazypath)

-- mapleader already defined, so going justo to maplocalleader
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import plugins
    { import = "plugins" }
  },

  --install colorscheme
  install = { colorscheme = { "habamax" } },

  -- check for updates
  checker = { enabled = true },
})

