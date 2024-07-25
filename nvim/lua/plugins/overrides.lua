-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  {
    "folke/which-key.nvim",
    opts = { preset = "modern", win = { border = "rounded" } },
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
        bottom_search = false,
        command_palette = {
          views = {
            cmdline_popup = {
              position = {
                row = "40%",
                col = "50%",
              },
            },
          },
        },
      },
      lsp = {
        signature = {
          enabled = true,
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
      opts.preview = {
        type = "float",
        border = "rounded",
        size = {
          width = 0.5,
          height = 0.5,
        },
      }
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
