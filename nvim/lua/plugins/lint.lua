return {
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      table.insert(opts.linters_by_ft or {}, {
        go = { "golangcilint" },
        dockerfile = { "hadolint" },
        javascript = { "biomejs", "eslint" },
        typescript = { "biomejs", "eslint" },
        javascriptreact = { "biomejs", "eslint" },
        typescriptreact = { "biomejs", "eslint" },
      })
      table.insert(opts.linters or {}, {
        biomejs = {
          condition = function(ctx)
            return vim.fs.find({ "biome.json", "biome.jsonc" }, {
              path = ctx.dirname,
              upward = true,
            })[1]
          end,
        },
        eslint = {
          condition = function(ctx)
            return vim.fs.find({
              ".eslintrc",
              ".eslintrc.js",
              ".eslintrc.cjs",
              ".eslintrc.yaml",
              ".eslintrc.yml",
              ".eslintrc.json",
              "eslint.config.js",
              "eslint.config.mjs",
              "eslint.config.cjs",
              "eslint.config.ts",
              "eslint.config.mts",
              "eslint.config.cts",
            }, {
              path = ctx.dirname,
              upward = true,
            })[1]
          end,
        },
      })
      return opts
    end,
  },
}
