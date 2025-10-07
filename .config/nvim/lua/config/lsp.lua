local on_attach = function(client, bufnr)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = bufnr })
end

vim.lsp.config('lua_ls', {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim', 'require' }, -- Example custom setting
      },
    },
  },
})

vim.lsp.config('*', {
  on_attach = on_attach, -- Attach your keymaps/functions to ALL LSPs
})
