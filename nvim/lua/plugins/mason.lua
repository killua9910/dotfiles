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
        -- rust
        "rust-analyzer",
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
