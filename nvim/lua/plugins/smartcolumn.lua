return {
  "m4xshen/smartcolumn.nvim",
  event = { "InsertEnter", "LazyFile" },
  opts = {
    disabled_filetypes = { "lazy", "mason", "trouble", "alpha", "neo-tree", "ministarter", "help", "text", "markdown" },
  },
  config = function(_, opts)
    require("smartcolumn").setup(opts)
  end,
}
