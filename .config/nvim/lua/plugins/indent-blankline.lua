return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {
		indent = {
			char = "│",
			highlight = { "VesperIndent" },
		},
		scope = {
			enabled = true,
			highlight = { "VesperScope" },
			char = "│",
		},
	},
	config = function(_, opts)
		local hooks = require("ibl.hooks")

		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			-- Almost transparent / very subtle grey for standard indents
			vim.api.nvim_set_hl(0, "VesperIndent", { fg = "#222222", nocombine = true })

			-- More opaque/visible color for the current scope (using Vesper's bright accent, e.g., yellow/orange or light gray)
			-- Option A: A visible muted gray/white (#707070 or #808080)
			-- Option B: Vesper's signature yellow/orange accent (#FFC799 or #FFC0B9)
			vim.api.nvim_set_hl(0, "VesperScope", { fg = "#FFC799", nocombine = true })
		end)

		require("ibl").setup(opts)
	end,
}
