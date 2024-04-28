-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore
-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
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
    }
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    opts = {
      transparent = true,
      italic_comments = true,
      hide_fillchars = true,
      borderless_telescope = false,
      terminal_colors = true,
      theme = {
        highlights = {
          Comment = { italic = true },
          Constant = { bold = true },
          Function = { bold = true },
          -- CursorLine = { bg = "#3c4048"}
        },
        colors = {}
      }
    }
  },
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    opts = {
      options = {
        terminal_colors = true,
        transparent = true,
        styles = {
          comments = "italic",
          constants = "bold",
        }
      }
    }
  },
  {
    'navarasu/onedark.nvim',
    opts = {
      style = "deep",
      term_colors = true,
      transparent = true,
      code_style = {
        comments = "italic",
        constants = "bold"
      }
    }
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cyberdream",
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.theme = "cyberdream"
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      indent = {
        char = "",
        tab_char = ""
      }
    }
  }
}
