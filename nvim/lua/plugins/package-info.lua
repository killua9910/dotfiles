return {
  "vuki656/package-info.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  event = "LazyFile",
  config = function()
    require("package-info").setup()
  end,
}
