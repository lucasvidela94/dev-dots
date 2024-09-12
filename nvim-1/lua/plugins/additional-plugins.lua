return {
  require("plugins.terminal-toggle"),
  require("plugins.statusline"),
  {
    "github/copilot.vim",
  },
  {
    "rescript-lang/vim-rescript",
  },
  {
    "devongovett/tree-sitter-highlight",
  },
  {
    "fladson/vim-kitty",
  },
  {
    "nvim-pack/nvim-spectre",
  },
  {
    "rescript-lang/tree-sitter-rescript",
  },
  {
    dir = "~/.config/nvim/yugem",
    lazy = true,
    priority = 1000,
    config = function()
      require("yugem").setup({})
      vim.cmd("colorscheme yugem")
      print("Yugem colorscheme applied") -- Mensaje de depuración
    end,
  },
}
