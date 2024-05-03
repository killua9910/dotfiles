-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  {
    "zootedb0t/citruszest.nvim",
    lazy = false,
    opts = {
      option = {
        transparent = true,
        bold = true,
        italic = true,
      },
      style = {
        Constant = { bold = true },
        Comment = { italic = true },
        Function = { bold = true },
      },
    },
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local colors = require("cyberdream.colors").default
      require("cyberdream").setup({
        transparent = true,
        italic_comments = true,
        hide_fillchars = true,
        borderless_telescope = false,
        terminal_colors = true,
        theme = {
          highlights = {
            Comment = { italic = true },
            Constant = { bold = true, fg = colors.magenta },
            Function = { bold = true },
            NoicePopupmenu = { fg = colors.bg },
          },
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cyberdream",
    },
  },
  {
    "which-key.nvim",
    opts = { window = { border = "rounded" } },
  },
  {
    "mason.nvim",
    opts = {
      ui = { border = "rounded" },
    },
  },
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.presets = vim.tbl_deep_extend("force", opts.presets or {}, {
        lsp_doc_border = true,
      })
    end,
  },
}
