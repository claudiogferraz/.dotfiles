-- General keymaps
vim.keymap.set("n", "<leader>L", ":Lazy<CR>", { desc = "Open Lazy window" })
vim.keymap.set("n", "<leader>M", ":Mason<CR>", { desc = "Open Mason window" })
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit INSERT mode on terminal" })

-- File related keymaps
vim.keymap.set("n", "<C-p>", ":bp<CR>", { desc = "Go to previous buffer" })
vim.keymap.set("n", "<C-n>", ":bn<CR>", { desc = "Go to next buffer" })
vim.keymap.set("n", "<C-d>", ":bd<CR>:bp<CR>", { desc = "Quit current buffer" })
vim.keymap.set("n", "<C-D>", ":bd!<CR>:bp<CR>", { desc = "Force quit current buffer" })

-- Telescope keymaps
vim.keymap.set("n", "<C-F>", ":Telescope Options<CR>", { desc = "Telescope Options" })
vim.keymap.set("n", "<C-F>f", ":Telescope find_files<CR>", { desc = "Find files (Telescope)" })
vim.keymap.set("n", "<C-F>g", ":Telescope live_grep<CR>", { desc = "Live grep (Telescope)" })
vim.keymap.set("n", "<C-F>b", ":Telescope buffers<CR>", { desc = "Find buffers (Telescope)" })
vim.keymap.set("n", "<C-F>h", ":Telescope help_tags<CR>", { desc = "Help tags (Telescope)" })

-- Code related keymaps
vim.keymap.set("n", "<C-k>", "", { desc = "+Code options" })
vim.keymap.set("n", "<C-k>a", ":lua vim.lsp.buf.code_action()<CR>", { desc = "Code actions" })
vim.keymap.set("n", "<C-k>d", ":lua vim.diagnostic.open_float()<CR>", { desc = "Toggle diagnostics" })
