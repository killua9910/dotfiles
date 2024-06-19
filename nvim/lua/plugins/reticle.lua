return {
  {
    "tummetott/reticle.nvim",
    event = "VeryLazy", -- optionally lazy load the plugin
    config = function()
      require("reticle").setup({
        on_startup = {
          cursorline = true,
          cursorcolumn = true,
        },
        disable_in_insert = true,
        disable_in_diff = true,
        always_highlight_number = true,
        never = {
          cursorline = {},
          cursorcolumn = {
            "neo-tree",
            "lazy",
            "mason",
            "DressingInput",
            "DressingSelect",
            "Trouble",
            "trouble",
            "FTerm",
          },
        },
      })
    end,
  },
}
