--aliases
local keymap = vim.keymap
local g = vim.g

--keymaps
g.mapleader = ' '                       --<space> as mapleader
keymap.set('n', 'x', '"_x')             --x sin yank
keymap.set('n', '<C-a>', 'gg<S-v>G')    --selectall
keymap.set('n', '<Leader>e', ':Ex<CR>') --<space>e abre netrw
keymap.set('n', '<bs>', ':nohlsearch<cr>', { silent = true }) --sacar hl con backspace

