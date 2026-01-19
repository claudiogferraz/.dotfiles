return {
  "windwp/nvim-ts-autotag",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-lua/plenary.nvim",
    "windwp/nvim-autopairs",
  },
  config = function()
    require('nvim-ts-autotag').setup({
      opts = {
        enable_close = true,
        enable_rename = true,
        enable_close_on_slash = false
      }
    })
  end,
}
