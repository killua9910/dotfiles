return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        compile = true,
        transparent = true,
        functionStyle = {
          bold = true,
        },
        keywordStyle = {
          italic = true,
          bold = true,
        },
        statementStyle = {
          bold = true,
          italic = true,
        },
        typeStyle = {
          bold = true,
        },
        overrides = function(colors)
          local theme = colors.theme
          return {
            PreProc = { bold = true, italic = true },
            ["@tag.attribute"] = { italic = true },
            ["@tag.delimiter"] = { italic = true },
            NormalFloat = { bg = "none" },
            FloatBorder = { bg = "none" },
            FloatTitle = { bg = "none" },

            -- Save an hlgroup with dark background and dimmed foreground
            -- so that you can use it where your still want darker windows.
            -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
            NormalDark = { fg = theme.ui.fg_dim, bg = "none" },

            -- Popular plugins that open floats will link to NormalFloat by default;
            -- set their background accordingly if you wish to keep them dark and borderless
            LazyNormal = { bg = "none", fg = theme.ui.fg_dim },
            MasonNormal = { bg = "none", fg = theme.ui.fg_dim },

            TelescopeTitle = { fg = theme.ui.special, bold = true },
            TelescopePromptNormal = { bg = "none" },
            TelescopePromptBorder = { fg = theme.ui.fg_dim, bg = "none" },
            TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = "none" },
            TelescopeResultsBorder = { fg = theme.ui.fg_dim, bg = "none" },
            TelescopePreviewNormal = { bg = "none" },
            TelescopePreviewBorder = { bg = "none", fg = theme.ui.fg_dim },

            -- cmp
            -- kind support
            CmpItemKindSnippet = { fg = theme.syn.special1 },
            CmpItemKindKeyword = { fg = theme.syn.keyword },
            CmpItemKindText = { fg = theme.syn.special2 },
            CmpItemKindMethod = { fg = theme.syn.fun },
            CmpItemKindConstructor = { fg = theme.syn.fun },
            CmpItemKindFunction = { fg = theme.syn.fun },
            CmpItemKindFolder = { fg = theme.syn.preproc },
            CmpItemKindModule = { fg = theme.syn.preproc },
            CmpItemKindConstant = { fg = theme.syn.constant },
            CmpItemKindField = { fg = theme.syn.string },
            CmpItemKindProperty = { fg = theme.syn.string },
            CmpItemKindEnum = { fg = theme.syn.string },
            CmpItemKindUnit = { fg = theme.syn.string },
            CmpItemKindClass = { fg = theme.syn.identifier },
            CmpItemKindVariable = { fg = theme.syn.keyword },
            CmpItemKindFile = { fg = theme.syn.fun },
            CmpItemKindInterface = { fg = theme.syn.identifier },
            CmpItemKindColor = { fg = theme.syn.preproc },
            CmpItemKindReference = { fg = theme.syn.preproc },
            CmpItemKindEnumMember = { fg = theme.syn.preproc },
            CmpItemKindStruct = { fg = theme.syn.fun },
            CmpItemKindValue = { fg = theme.syn.number },
            CmpItemKindEvent = { fg = theme.syn.fun },
            CmpItemKindOperator = { fg = theme.syn.fun },
            CmpItemKindTypeParameter = { fg = theme.syn.fun },
            CmpItemKindCopilot = { fg = theme.syn.special3 },
          }
        end,
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = "none",
              },
            },
            wave = {
              ui = {
                float = {
                  bg = "none",
                },
              },
            },
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
          RainbowDelimiterRed = { fg = "#E82424" },
          RainbowDelimiterYellow = { fg = "#FF9E3B" },
          RainbowDelimiterBlue = { fg = "#7E9CD8" },
          RainbowDelimiterOrange = { fg = "#FFA066" },
          RainbowDelimiterGreen = { fg = "#98BB6C" },
          RainbowDelimiterViolet = { fg = "#957FB8" },
          RainbowDelimiterCyan = { fg = "#A3D4D5" },
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
      colorscheme = "catppuccin-mocha",
    },
  },
}
