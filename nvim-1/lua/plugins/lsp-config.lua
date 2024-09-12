return {
  "neovim/nvim-lspconfig",
  event = "VeryLazy",
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      angularls = {
        root_dir = function(fname)
          return require("lspconfig.util").root_pattern("angular.json", "project.json")(fname)
        end,
      },
      gopls = {
        cmd = { "gopls" },
        filetypes = { "go", "gomod", "gowork", "gotmpl" },
        root_dir = require("lspconfig.util").root_pattern("go.work", "go.mod", ".git"),
        settings = {
          gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            analyses = {
              unusedparams = true,
            },
            staticcheck = true,
          },
        },
      },
    },
  },
}
