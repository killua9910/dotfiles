return {
  "petertriho/nvim-scrollbar",
  event = "LazyFile",
  config = function()
    require("scrollbar").setup()
  end,
}
