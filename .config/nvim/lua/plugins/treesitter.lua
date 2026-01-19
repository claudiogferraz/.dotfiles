return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "rust",
      "go",
      "typescript",
      "javascript",
      "html",
      "css",
      "json",
      "yaml",
      "markdown",
      "bash",
      "python"
    },
    highlight = {
      enable = true,
    },
    indent = {
      enable = true
    },
    auto_install = true,
  }
}
