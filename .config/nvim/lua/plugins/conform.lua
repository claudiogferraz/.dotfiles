return {
  'stevearc/conform.nvim',
  opts = {
    format_on_save = true,
    formatters_by_ft = {
      lua = { "stylua" },
      markdown = { "prettier", "eslint_d" },
      javascript = { "prettier", "eslint_d" },
      typescript = { "prettier", "eslint_d" },
      python = { "isort", "black" },
      yaml = { "prettier", "eslint_d" },
      json = { "prettier", "eslint_d" },
      rust = { "rustfmt", lsp_format = "fallback" },
      go = { "gofmt" },
    },

  },
}
