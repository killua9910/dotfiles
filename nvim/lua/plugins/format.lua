return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = vim.tbl_deep_extend("force", opts.formatters_by_ft, {
        go = { "goimports", "gofumpt" },
        lua = { "stylua" },
        rust = { "rustfmt" },
        javascript = { "prettier" },
        html = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        css = { "prettier" },
        json = { "prettier" },
        toml = { "taplo" },
      })
      return opts
    end,
  },
}
