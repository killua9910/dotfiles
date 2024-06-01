-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  {
    "folke/which-key.nvim",
    opts = { window = { border = "rounded" } },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ui = { border = "rounded" },
    },
  },
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true,
      },
      lsp = {
        signature = {
          enabled = false,
          opts = {
            size = {
              max_width = 50,
            },
          },
        },
        hover = {
          enabled = true,
          opts = {
            size = {
              max_width = 50,
            },
          },
        },
      },
    },
  },
  {
    "folke/trouble.nvim",
    opts = function(_, opts)
      opts.focus = true
    end,
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
      label = {
        uppercase = false,
        rainbow = {
          enabled = true,
          shade = 5,
        },
      },
    },
  },
}
