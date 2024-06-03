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
        "prettier",
        "eslint-lsp",
        -- markdown
        "markdownlint",
        "marksman",
        -- go
        "gofumpt",
        "gopls",
        "goimports",
        -- docker
        "hadolint",

        "codelldb",
      },
    },
  },
}
