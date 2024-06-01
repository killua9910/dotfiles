return {
  "ray-x/lsp_signature.nvim",
  event = "VeryLazy",
  opts = {
    bind = true,
    handler_opts = {
      border = "rounded", -- double, rounded, single, shadow, none, or a table of borders
    },
    transparency = 100,
  },
  config = function(_, opts)
    require("lsp_signature").setup(opts)
  end,
}
