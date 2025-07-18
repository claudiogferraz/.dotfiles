return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "gruvbox"
      -- vim.cmd [[
      --   highlight Normal guibg=none
      --   highlight NonText guibg=none
      --   highlight Normal ctermbg=none
      --   highlight NonText ctermbg=none
      -- ]]
    end,
  },
}
