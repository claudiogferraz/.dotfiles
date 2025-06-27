local lspconfig = require("lspconfig")

require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "vtsls",
    "cssls",
    "tailwindcss",
    "rust_analyzer",
    "emmet_language_server",
    "dockerls",
  },
  handlers = {
    function(server_name)
      lspconfig[server_name].setup({})
    end,

    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
          telemetry = {
            enabled = false,
          },
        }
      }
    })
  },
})
