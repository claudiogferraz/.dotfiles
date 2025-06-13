return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    view = {
      width = 36,
    },
    actions = {
      open_file = {
        quit_on_open = false,
      }
    },
    update_focused_file = {
      enable = true,
      update_root = true,
    },
    sync_root_with_cwd = true,
    git = {
      ignore = false,
    },
    filters = {
      dotfiles = false,
      custom = {}
    },
    renderer = {
      group_empty = true,
      full_name = true,
    },
  },
  config = function(_, opts)
    require("nvim-tree").setup(opts)
  end,
}
