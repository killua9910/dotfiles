return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        go = { "goimports", "gofumpt" },
        lua = { "stylua" },
        rust = { "rustfmt" },
        javascript = { "biome-check", "prettier" },
        typescript = { "biome-check", "prettier" },
        javascriptreact = { "biome-check", "prettier" },
        typescriptreact = { "biome-check", "prettier" },
        tsx = { "biome-check", "prettier" },
        css = { "biome-check", "prettier" },
        json = { "biome-check", "prettier" },
        toml = { "taplo" },
      },
      formatters = {
        ["biome-check"] = {
          condition = function(self, ctx)
            return vim.fs.find({ "biome.json", "biome.jsonc" }, {
              path = ctx.dirname,
              upward = true,
            })[1]
          end,
        },
        prettier = {
          condition = function(self, ctx)
            return vim.fs.find({
              ".prettierrc",
              ".prettierrc.json",
              ".prettierrc.yml",
              ".prettierrc.yaml",
              ".prettierrc.json5",
              ".prettierrc.js",
              ".prettierrc.cjs",
              ".prettierrc.mjs",
              ".prettierrc.toml",
              "prettier.config.js",
              "prettier.config.cjs",
              "prettier.config.mjs",
            }, {
              path = ctx.dirname,
              upward = true,
            })[1]
          end,
        },
      },
    },
  },
}
