-- General keymaps
vim.keymap.set("n", "<leader>L", ":Lazy<CR>", { desc = "Open Lazy window" })
vim.keymap.set("n", "<leader>M", ":Mason<CR>", { desc = "Open Mason window" })
vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>", { desc = "Open terminal buffer (ToggleTerm)" })
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer (NvimTree)" })
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit INSERT mode on terminal" })
-- vim.keymap.set("n", ":", ":FineCmdline<CR>", { desc = "Open FineCmdline" })

-- Buffer keymaps
vim.keymap.set("n", "<leader>b", "", { desc = "+Buffer options" })
vim.keymap.set("n", "<leader>n", ":bn<CR>", { desc = "Go to next buffer" })
vim.keymap.set("n", "<leader>p", ":bp<CR>", { desc = "Go to previous buffer" })
vim.keymap.set("n", "<leader>d", ":bd<CR>:bp<CR>", { desc = "Quit current buffer" })
vim.keymap.set("n", "<leader>D", ":bd!<CR>:bp<CR>", { desc = "Force quit current buffer" })

-- Window keymaps
vim.keymap.set("n", "<leader>w", "", { desc = "+Window options" })
vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "Focus window on the left" })
vim.keymap.set("n", "<leader>j", "<C-w>j", { desc = "Focus window on the bottom" })
vim.keymap.set("n", "<leader>k", "<C-w>k", { desc = "Focus window on the top" })
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "Focus window on the right" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit current window" })
vim.keymap.set("n", "<leader>Q", ":q!<CR>", { desc = "Force quit current window" })
vim.keymap.set("n", "<leader>a", ":qa<CR>", { desc = "Quit all windows" })
vim.keymap.set("n", "<leader>A", ":qa!<CR>", { desc = "Force quit all windows" })

-- File related keymaps
vim.keymap.set("n", "<leader>f", "", { desc = "File options" })
vim.keymap.set("n", "<leader>fm", ":lua require(\"conform\").format({ async = true, lsp_format = \"fallback\" })<CR>",
  { desc = "Format file/buffer (Conform)" })
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
