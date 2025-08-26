return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "folke/lazydev.nvim",
  },
  config = function()
    -- default
    -- habilitar lsp java
    vim.lsp.config("jdtls", {
      settings = {
        java = {
          -- Custom eclipse.jdt.ls options go here
        },
      },
    })
    vim.lsp.enable("jdtls")

    vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
    vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

    local on_attach = function(_, bufnr)
      vim.bo[bufnr].omnifunc =  'v:lua.vim.lsp.omnifunc'
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {buffer = bufnr})
    end

    require("lazydev").setup()
    -- Si instalo otro lenguaje cambio lua_ls por el nombre del servidor
    require("lspconfig").lua_ls.setup({
      on_attach = on_attach,
      settings = {
        Lua = {
          telemetry = { enable = false },
          workspace = { checkThirdParty = false },
        }
      }
    })
  end
}
