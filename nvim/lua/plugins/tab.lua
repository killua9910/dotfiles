return {
  {
    "akinsho/bufferline.nvim",
    opts = function(_, opts)
      opts.options = vim.tbl_deep_extend("keep", opts.options or {}, {
        themable = true,
        indicator = {
          style = "underline",
        },
        color_icons = true,
      })
    end,
  },
}
