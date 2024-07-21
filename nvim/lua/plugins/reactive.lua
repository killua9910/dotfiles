return {
  "rasulomaroff/reactive.nvim",
  config = function()
    require("reactive").setup({
      load = { "catppuccin-macchiato-cursor", "catppuccin-macchiato-cursorline" },
    })
  end,
}
