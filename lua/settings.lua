--aliases
local opt=vim.opt

--encodings
vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

--settings
vim.wo.number = true --que haya numerillos
vim.wo.relativenumber = true --tambien relativos
opt.hlsearch = false --no resaltar búsqueda
opt.incsearch = false --no ir mostrando donde va acertando la búsqueda
opt.inccommand = 'split' --splitear cuando haga commands, muy cheto queda
opt.ignorecase = true --buscar case insensitive por defecto
opt.scrolloff = 10 --mantener 10 líneas entre el limite superior/inferior del buffer y el cursor
opt.path:append { '**' } --buscar también en subfolders

--sección indent
opt.autoindent = true --mantener la indentación cuando se toca <CR>
opt.smarttab = true --seguir los tabs que hay en el documento
opt.shiftwidth = 2 --indentación cuando usas >> o <<
opt.softtabstop = 2 --numero de espacios por los que cuenta un tab
opt.smartindent = true --meter indentación automáticamente
opt.wrap = false

--sección highlights
opt.cursorline = true --meter línea donde esté el cursor
opt.cursorlineopt = "number,screenline" --que no subraye, sino que resalte
opt.termguicolors = true --habilita más colores
opt.pumblend = 30 --supuestamente, opacidad de la autocompletion, ya veremos
opt.list = true --mostrar caracteres invisibles, como espacios y tabs

--tema clipboard
opt.clipboard:prepend { 'unnamed', 'unnamedplus' } --hay que revisarlo para linux

--plugins config
