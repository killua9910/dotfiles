return {
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      opts.events = { "BufWritePost", "BufReadPost", "InsertLeave", "TextChanged" }
      opts.linters_by_ft = vim.tbl_deep_extend("force", opts.linters_by_ft, {
        go = { "golangcilint" },
        dockerfile = { "hadolint" },
        markdown = { "markdownlint" },
        python = { "ruff" },
        javascript = { "eslint" },
        typescript = { "eslint" },
        javascriptreact = { "eslint" },
        typescriptreact = { "eslint" },
      })
      return opts
    end,
  },
}
