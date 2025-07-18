return {
  {
    "marko-cerovac/material.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.material_style = "darker"
      vim.cmd.colorscheme "material"
      vim.cmd [[
        highlight Normal guibg=none
        highlight NonText guibg=none
        highlight Normal ctermbg=none
        highlight NonText ctermbg=none
      ]]
    end,
  },
  -- {
  --   "forest-nvim/sequoia.nvim",
  --   lazy = false,
  --   priority = 1000,
  -- },
  -- {
  --   "olimorris/onedarkpro.nvim",
  --   priority = 1000,
  --   -- onedark, onelight, onedark_vivid, onedark_dark, vaporwave
  -- },
  -- {
  --   "UtkarshVerma/molokai.nvim",
  --   lazy = false,
  --   priority = 1000,
  -- },
  -- {
  --   "navarasu/onedark.nvim",
  --   lazy = false,
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   opts = {
  --     style = "darker",
  --   }
  -- },
  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   lazy = false,
  --   priority = 1000,
  -- },
  -- {
  --   'datsfilipe/min-theme.nvim',
  --   lazy = false,
  --   priority = 1000,
  -- },
  -- {
  --   'Mofiqul/vscode.nvim',
  --   lazy = false,
  --   priority = 1000,
  -- },
}
