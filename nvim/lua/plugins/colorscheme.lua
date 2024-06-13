return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "night",
        transparent = true,
        terminal_colors = true,
        styles = {
          comments = { italic = true },
          keywords = { bold = true, italic = true },
          functions = { bold = true },
          sidebars = "transparent",
          floats = "transparent",
        },
        on_colors = function(colors)
          colors.bg_statusline = "NONE"
        end,
        on_highlights = function(highlights, colors)
          highlights.LspInlayHint = {
            bg = colors.none,
            fg = colors.dark3,
          }
          highlights.Type = { fg = colors.blue1, bold = true }
          highlights["@tag.attribute.tsx"] = { italic = true, bold = true, fg = colors.green2 }
          highlights["@keyword.import.tsx"] = { italic = true, bold = true, fg = colors.red }
          highlights["@keyword.import.typescript"] = { italic = true, bold = true, fg = colors.red }
          highlights["@keyword.export.tsx"] = { italic = true, bold = true, fg = colors.red }
          highlights["@keyword.export.typescript"] = { italic = true, bold = true, fg = colors.red }

          highlights["@keyword.import.rust"] = { italic = true, bold = true, fg = colors.red }
          highlights["@lsp.type.rust"] = { italic = true, fg = colors.red1 }
          highlights["@lsp.type.namespace.rust"] = { italic = true, fg = colors.red1 }

          highlights.RainbowDelimiterRed = { fg = "#FF1A75" }
          highlights.RainbowDelimiterYellow = { fg = "#f1ff5e" }
          highlights.RainbowDelimiterBlue = { fg = "#28C9FF" }
          highlights.RainbowDelimiterOrange = { fg = "#FFAA54" }
          highlights.RainbowDelimiterGreen = { fg = "#5eff6c" }
          highlights.RainbowDelimiterViolet = { fg = "#bd5eff" }
          highlights.RainbowDelimiterCyan = { fg = "#33FFFF" }
        end,
      })
    end,
  },
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    name = "catppuccin",
    opts = {
      flavour = "auto",
      transparent_background = true,
      term_colors = true,
      styles = {
        comments = { "italic" },
        conditionals = { "bold", "italic" },
        functions = { "bold" },
        constants = { "bold" },
        keywords = { "bold", "italic" },
      },
      color_overrides = {},
      custom_highlights = function(C)
        return {
          RainbowDelimiterRed = { fg = "#FF1A75" },
          RainbowDelimiterYellow = { fg = "#f1ff5e" },
          RainbowDelimiterBlue = { fg = "#28C9FF" },
          RainbowDelimiterOrange = { fg = "#FFAA54" },
          RainbowDelimiterGreen = { fg = "#5eff6c" },
          RainbowDelimiterViolet = { fg = "#bd5eff" },
          RainbowDelimiterCyan = { fg = "#33FFFF" },
          FloatBorder = { fg = C.yellow },
        }
      end,
      integrations = {
        telescope = {
          enabled = true,
        },
        dropbar = {
          enabled = true,
          color_mode = true,
        },
        flash = true,
        barbar = true,
        leap = true,
        neotree = true,
        neotest = true,
        mason = true,
        noice = true,
        notify = true,
        which_key = true,
        semantic_tokens = true,
        mini = {
          enabled = true,
        },
        overseer = true,
        cmp = true,
        dap = true,
        dap_ui = true,
        treesitter_context = true,
        treesitter = true,
        window_picker = true,
        rainbow_delimiters = true,
        symbols_outline = true,
        lsp_trouble = true,
        illuminate = {
          enabled = true,
          lsp = true,
        },
        indent_blankline = {
          enabled = true,
          colored_indent_levels = true,
        },
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
          },
          inlay_hints = {
            background = false,
          },
        },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
  {

    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options = vim.tbl_deep_extend("keep", opts.options or {}, {
        theme = "tokyonight",
      })
    end,
  },
}
