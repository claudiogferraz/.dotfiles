return {
  "EdenEast/nightfox.nvim",
  config = function()
    require("nightfox").setup({
      options = {
        transparent = true,
      },
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    })

    vim.o.background = "dark"
    vim.cmd.colorscheme "carbonfox"
  end,
}
