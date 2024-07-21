return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = true,
        exclude = {
          "typescriptreact",
          "javascriptreact",
          "javascript",
          "typescript",
        },
      },
      codelens = {
        enabled = false,
      },
      servers = {
        biome = {
          settings = {
            single_file_support = true,
          },
        },
      },
      setup = {},
    },
  },
}
