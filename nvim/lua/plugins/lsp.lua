return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = true,
        exclude = {
          "jsx",
          "typescriptreact",
          "js",
          "ts",
          "javascriptreact",
        },
      },
      codelens = {
        enabled = false,
      },
      servers = {},
      setup = {},
    },
  },
}
