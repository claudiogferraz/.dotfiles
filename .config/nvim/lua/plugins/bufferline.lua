return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("bufferline").setup {
        options = {
          offsets = {
            {
              filetype = "NvimTree",
              text = "File Explorer",
              highlight = "BufferLineTab",
              text_align = "center",
              separator = false,
            },
            {
              -- No filetype specified, so this applies generally
              text = string.rep(" ", 42),   -- Create 42 spaces for a fixed offset
              highlight = "BufferLineFill", -- Use a fill highlight group
              separator = true,
            },
          },
        },
      }
    end,
  }
}
