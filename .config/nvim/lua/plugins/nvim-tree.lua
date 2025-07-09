return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
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
      ignore = true,
    },
    filters = {
      dotfiles = false,
      custom = {
        "node_modules",
        ".git",
        ".venv"
      }
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
