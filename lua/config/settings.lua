local opt = vim.o

-- General
opt.number = true
vim.opt.mouse = 'a'
vim.opt.encoding = 'utf-8'
vim.cmd('syntax on')
vim.g.mapleader = " "


-- Tab 4 espacios
--opt.smartindent = true
--opt.tabstop = 4
--opt.shiftwidth = 4
--opt.expandtab = true


-- Copiar todo Ctrl+a
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', { noremap = true, silent = true })


-- Guardar Ctrl+s
-- Modo Normal
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
-- Modo de Inserción
vim.api.nvim_set_keymap('i', '<C-s>', '<C-o>:w<CR>', { noremap = true, silent = true })


-- Dulpicar línea Ctrl+d
-- Modo Normal
vim.api.nvim_set_keymap('n', '<C-d>', ':t.<CR>', { noremap = true, silent = true })
-- Modo de Inserción
vim.api.nvim_set_keymap('i', '<C-d>', '<C-o>:t.<CR>', { noremap = true, silent = true })


-- Navegación ventanas usando Shift+L/R izquierda/derecha
vim.api.nvim_set_keymap('n', '<S-Left>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Right>', '<C-w>l', { noremap = true, silent = true })
-- Crear split vertical con Shift+v
vim.api.nvim_set_keymap('n', '<S-v>', ':vsplit<CR>', { noremap = true, silent = true })


-- Colorscheme
--vim.cmd.colorscheme("slate")
-- Fondo transparente
-- Modo gráfico (GUI)
--vim.cmd('highlight Normal guibg=none')
--vim.cmd('highlight NonText guibg=none')
-- Modo de terminal (CTerm)
--vim.cmd('highlight Normal ctermbg=none')
--vim.cmd('highlight NonText ctermbg=none')

