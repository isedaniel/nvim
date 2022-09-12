local keymap = vim.keymap

--seteo la lider
vim.g.mapleader = ' '

--que la x no haga yank
keymap.set('n', 'x', '"_x')

--incrementar/decrementar
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

--select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

--open explorador
keymap.set('n', '<Leader>e', ':Ex<CR>')
