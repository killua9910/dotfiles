return {
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        themable = true,
        indicator = {
          style = "underline",
        },
        color_icons = true,
      },
    },
    config = function(_, opts)
      opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
      require("bufferline").setup(opts)
    end,
  },
}
