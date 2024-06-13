return {
  "gen740/SmoothCursor.nvim",
  event = "LazyFile",
  config = function()
    require("smoothcursor").setup({
      type = "matrix",
    })
  end,
}
