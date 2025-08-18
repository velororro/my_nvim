return {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
    config = function()
        -- cargar colorscheme
        vim.cmd([[colorscheme moonfly]])
        -- Modo gráfico (GUI)
        vim.cmd('highlight Normal guibg=none')
        vim.cmd('highlight NonText guibg=none')
        -- Modo de terminal (CTerm)
        vim.cmd('highlight Normal ctermbg=none')
        vim.cmd('highlight NonText ctermbg=none')
    end,
}
