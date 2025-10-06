return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig"
  },
  opts = {
    ensure_installed = {
      "lua_ls",
      "vtsls",
      "cssls",
      "tailwindcss",
      "rust_analyzer",
      "emmet_language_server",
      "dockerls",
    },
  },
  config = function()
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
  end
}
