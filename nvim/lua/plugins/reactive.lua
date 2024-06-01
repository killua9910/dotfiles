return {
  "rasulomaroff/reactive.nvim",
  config = function()
    require("reactive").setup({
      load = { "catppuccin-mocha-cursor", "catppuccin-mocha-cursorline" },
    })
  end,
}
