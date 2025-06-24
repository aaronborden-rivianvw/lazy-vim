return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        yamlls = {
          settings = {
            yaml = {
              format = {
                enable = false, -- Disable formatting for YAML files
              },
            },
          },
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        yaml = { "prettier" },
      },
    },
  },
  {
    "mason.nvim",
    opts = {
      ensure_installed = { "prettier", "yamlfmt" },
    },
  },
}
