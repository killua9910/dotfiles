return {
  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "eslint_d",
        "prettierd",
        "prettier",
        "goimports",
      },
    },
  },
}
