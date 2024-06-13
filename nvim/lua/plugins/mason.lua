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
        "css-lsp",
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
