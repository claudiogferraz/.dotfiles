return {
	"stevearc/conform.nvim",
	opts = {
		timeout_ms = 3000,
		format_on_save = true,
		formatters_by_ft = {
			lua = { "stylua" },
			markdown = { "prettierd", "prettier" },
			javascript = { "prettierd", "prettier" },
			typescript = { "prettierd", "prettier" },
			python = { "isort" },
			yaml = { "prettierd", "prettier" },
			json = { "prettierd", "prettier" },
			rust = { "rustfmt", lsp_format = "fallback" },
			go = { "gofmt" },
		},
	},
}
