-- General keymaps
vim.keymap.set("n", "<leader>l", ":Lazy<CR>", { desc = "Open Lazy window" })
vim.keymap.set("n", "<leader>m", ":Mason<CR>", { desc = "Open Mason window" })

-- Terminal keymaps
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit INSERT mode on terminal" })

-- File related keymaps
vim.keymap.set("n", "<leader>b", "", { desc = "Buffer options" })
vim.keymap.set("n", "<leader>bh", ":bp<CR>", { desc = "Go to previous buffer" })
vim.keymap.set("n", "<leader>bp", ":bp<CR>", { desc = "Go to previous buffer" })
vim.keymap.set("n", "<leader>bl", ":bn<CR>", { desc = "Go to next buffer" })
vim.keymap.set("n", "<leader>bn", ":bn<CR>", { desc = "Go to next buffer" })

-- Telescope keymaps
vim.keymap.set("n", "<leader>f", "", { desc = "Telescope Options" })
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find files (Telescope)" })
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Live grep (Telescope)" })
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Find buffers (Telescope)" })
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", { desc = "Help tags (Telescope)" })

-- Code related keymaps
vim.keymap.set("n", "<leader>k", "", { desc = "+Code actions/commands" })
vim.keymap.set("n", "<leader>ka", ":lua vim.lsp.buf.code_action()<CR>", { desc = "Code actions" })
vim.keymap.set("n", "<leader>ko", function()
	vim.lsp.buf.code_action({
		context = { only = { "source.organizeImports" } },
		apply = true,
	})
end, { desc = "Organize imports" })
