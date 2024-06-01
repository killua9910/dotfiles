return {
  "akinsho/bufferline.nvim",
  after = "catppuccin",
  opts = {
    options = {
      themable = true,
      indicator = {
        -- style = "underline",
      },
    },
  },
  config = function(_, opts)
    opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
    require("bufferline").setup(opts)
  end,
}
