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
    },
  },
}
