return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    options = {
      style = "padded_slant",
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          highlight = "BufferLineTab",
          text_align = "center",
          separator = true,
        },
        {
          text = string.rep(" ", 42),
          highlight = "BufferLineFill",
          separator = true,
        },
      },
    },
  },
  config = function(_, opts)
    require("bufferline").setup(opts)
  end,
}
