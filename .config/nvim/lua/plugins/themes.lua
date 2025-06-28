return {
  {
    "Mofiqul/adwaita.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.adwaita_darker = true              -- for darker version
      vim.g.adwaita_disable_cursorline = false -- to disable cursorline
      vim.g.adwaita_transparent = false        -- makes the background transparent
    end
  },
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "forest-nvim/sequoia.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require('onedark').setup {
        style = "warmer",
      }
    end
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    optrs = {},
  },
}
