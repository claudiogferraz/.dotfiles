return {
	"stevearc/conform.nvim",
	opts = {
		timeout_ms = 2000,
		format_on_save = true,
		formatters_by_ft = {
			lua = { "stylua" },
			markdown = { "prettier" },
			javascript = { "prettier" },
			typescript = { "prettier" },
			python = { "isort" },
			yaml = { "prettier" },
			json = { "prettier" },
			rust = { "rustfmt", lsp_format = "fallback" },
			go = { "gofmt" },
		},
	},
}
