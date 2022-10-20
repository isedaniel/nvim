--aliases
local keymap = vim.keymap
local g = vim.g
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

--keymaps
g.mapleader = ' '                       --<space> as mapleader
keymap.set('n', 'x', '"_x')             --x sin yank
keymap.set('n', '<C-a>', 'gg<S-v>G')    --selectall
keymap.set('n', '<Leader>e', ':Ex<CR>') --<space>e abre netrw
keymap.set('n', '<bs>', ':nohlsearch<cr>', { silent = true }) --sacar hl con backspace

--Resize con flechitas
keymap.set('n', '<C-Up>', ':resize +2<CR>', opts)
keymap.set('n', '<C-Down>', ':resize -2<CR>', opts)
keymap.set('n', '<C-Left>', ':vertical resize +2<CR>', opts)
keymap.set('n', '<C-Right>', ':vertical resize -2<CR>', opts)

--navegar buffers
keymap.set('n', '<S-l>', ':bnext<CR>', opts)
keymap.set('n', '<S-h>', ':bprevious<CR>', opts)

--visual mode
--quedarse en indent mode
keymap.set('v', '<', "<gv", opts)
keymap.set('v', '>', ">gv", opts)

--mover texto arriba y abajo
keymap.set('v', '<A-j>', ':m .+1<CR>==', opts)
keymap.set('v', '<A-j>', ':m .-2<CR>==', opts)

--no yankear cuando le pegas algo encima a otra cosa
keymap.set('v', 'p', '"_dP', opts)

--mover texto arriba y abajo también cuando se elige en bloque
keymap.set("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap.set("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
