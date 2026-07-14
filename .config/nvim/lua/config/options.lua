-- General options
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.showmode = false

-- Window options
vim.o.winborder = "rounded"

-- Tabs options
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"

-- Column rulers
vim.opt.colorcolumn = "100"

-- Diagnostics
vim.diagnostic.config({
	signs = true,
	virtual_text = false,
})
