return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-fzf-native.nvim',
  },
  opts = {
    pickers = {
      find_files = {
        hidden = true,
        file_ignore_patterns = { 'node_modules', '.git', '.venv' },
      },
      live_grep = {
        file_ignore_patterns = { 'node_modules', '.git', '.venv' },
        additional_args = function(_)
          return { "--hidden" }
        end
      },
    },
  },
}
