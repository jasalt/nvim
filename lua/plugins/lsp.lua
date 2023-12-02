return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      --      autoformat = false,
      servers = {
        intelephense = {
          settings = {
            intelephense = {
              format = {
                braces = "k&r",
              },
            },
          },
        },
        ruff_lsp = {
          autostart = false,
        },
        -- ruff_lsp = {
        --   settings = {
        --     args = { "--ignore=E501" },
        --     linting = {
        --       ignore = { "E501" },
        --     },
        --     ruff_lsp = {
        --       args = {
        --         "--ignore=E501",
        --         "--line-length=200",
        --       },
        --     },
        --   },
        -- },
      },
    },
  },
}
