local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

-- if lazy.nvim is not downloaded, clone it with git
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })

  -- error handling
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

-- prepend lazypath to neovim runtime path
vim.opt.runtimepath:prepend(lazypath)

-- just localleader
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- dir to check for plugins modules
    { import = "plugins" }
  },
})

