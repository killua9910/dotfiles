return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "selene",

        "shellcheck",
        "shfmt",
        -- frontend
        "html-lsp",
        "css-lsp",
        "eslint-lsp",
        "biome",
        "prettier",
        -- markdown
        "markdownlint",
        "marksman",
        -- docker
        "hadolint",

        "codelldb",
      },
    },
  },
}
