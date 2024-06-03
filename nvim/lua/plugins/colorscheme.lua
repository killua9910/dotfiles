return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nightfox").setup({
        options = {
          transparent = true,
          terminal_colors = true,
          styles = {
            comments = "italic",
            constants = "bold",
            keywords = "italic,bold",
            functions = "bold",
            conditionals = "bold,italic",
          },
        },
        groups = {
          all = {
            NormalFloat = { fg = "fg1", bg = "NONE" },
            LspInlayHint = { bg = "NONE" },
          },
        },
        modules = {},
      })
    end,
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
        hide_fillchars = false,
        borderless_telescope = false,
        terminal_colors = true,
        theme = {
          variant = "default",
          highlights = {
            Comment = { style = "italic" },
            Constant = { style = "bold", fg = colors.magenta },
            Function = { style = "bold" },
            Keyword = { style = "bold" },
          },
        },
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
          RainbowDelimiterRed = { fg = "#ff5ea0" },
          RainbowDelimiterYellow = { fg = "#f1ff5e" },
          RainbowDelimiterBlue = { fg = "#5ef1ff" },
          RainbowDelimiterOrange = { fg = "#ffbd5e" },
          RainbowDelimiterGreen = { fg = "#5eff6c" },
          RainbowDelimiterViolet = { fg = "#ff5ef1" },
          RainbowDelimiterCyan = { fg = "#5ef1ff" },
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
      colorscheme = "catppuccin-frappe",
    },
  },
}
