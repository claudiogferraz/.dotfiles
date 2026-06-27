-- General keymaps
vim.keymap.set("n", "<leader>L", ":Lazy<CR>", { desc = "Open Lazy window" })
vim.keymap.set("n", "<leader>M", ":Mason<CR>", { desc = "Open Mason window" })
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit INSERT mode on terminal" })

-- File related keymaps
vim.keymap.set("n", "<C-p>", ":bp<CR>", { desc = "Go to previous buffer" })
vim.keymap.set("n", "<C-n>", ":bn<CR>", { desc = "Go to next buffer" })
vim.keymap.set("n", "<C-d>", ":bd<CR>:bp<CR>", { desc = "Quit current buffer" })
vim.keymap.set("n", "<C-D>", ":bd!<CR>:bp<CR>", { desc = "Force quit current buffer" })
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find files (Telescope)" })
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Live grep (Telescope)" })
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Find buffers (Telescope)" })
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", { desc = "Help tags (Telescope)" })

-- Code related keymaps
vim.keymap.set("n", "<leader>c", "", { desc = "+Code options" })
vim.keymap.set("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", { desc = "Code actions" })
vim.keymap.set("n", "<leader>cd", ":Trouble diagnostics toggle<CR>", { desc = "Toggle diagnostics (Trouble)" })
vim.keymap.set("n", "<leader>cD", ":Trouble diagnostics toggle filter.buf=0<CR>",
  { desc = "Toggle diagnostics for current buffer (Trouble)" })
