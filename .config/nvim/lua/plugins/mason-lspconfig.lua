return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
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
			"markdown_oxide",
			"eslint",
			"jsonls",
			"yamlls",
			"html",
		},
    ui = {
      border = "rounded",
    },
	},
}
