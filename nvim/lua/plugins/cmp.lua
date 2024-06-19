return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-calc",
    },
    opts = function(_, opts)
      table.insert(opts.sources, { name = "calc" })
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "onsails/lspkind.nvim",
    },
    opts = function(_, opts)
      local cmp = require("cmp")
      local lspkind = require("lspkind")
      opts = vim.tbl_deep_extend("force", opts or {}, {
        sources = cmp.config.sources({
          { name = "nvim_lsp", priority = 1000, group_index = 1 },
          { name = "buffer", priority = 500, group_index = 2 },
          { name = "luasnip", priority = 750, group_index = 1 },
          { name = "path", priority = 250, group_index = 1 },
          { name = "calc", priority = 100 },
        }),
        window = {
          completion = cmp.config.window.bordered({
            border = {
              { "󱐋", "WarningMsg" },
              { "─", "Comment" },
              { "╮", "Comment" },
              { "│", "Comment" },
              { "╯", "Comment" },
              { "─", "Comment" },
              { "╰", "Comment" },
              { "│", "Comment" },
            },
          }),
          documentation = cmp.config.window.bordered({
            border = {
              { "", "DiagnosticHint" },
              { "─", "Comment" },
              { "╮", "Comment" },
              { "│", "Comment" },
              { "╯", "Comment" },
              { "─", "Comment" },
              { "╰", "Comment" },
              { "│", "Comment" },
            },
          }),
        },
        preselect = cmp.PreselectMode.None,
        completion = {
          keyword_length = 1,
          completeopt = "menu,menuone,noinsert,noselect",
        },
        formatting = {
          fields = { "kind", "abbr", "menu" },
          format = lspkind.cmp_format({
            mode = "symbol_text",
            preset = "codicons",
            before = function(entry, vim_item)
              if vim.tbl_contains({ "path" }, entry.source.name) then
                local icon, hl_group = require("nvim-web-devicons").get_icon(entry:get_completion_item().label)
                if icon then
                  vim_item.kind = icon
                  vim_item.kind_hl_group = hl_group
                  return vim_item
                end
              end
              vim_item.menu = ({
                nvim_lsp = "(LSP)",
                buffer = "(Buffer)",
                path = "(Path)",
                luasnip = "(Snippets)",
                calc = "(Calc)",
              })[entry.source.name]

              vim_item.dup = ({
                buffer = 1,
                path = 1,
                nvim_lsp = 0,
                snippets = 1,
              })[entry.source.name] or 0
              return vim_item
            end,
          }),
        },
      })
      return opts
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    keys = { ":", "/", "?" },
    dependencies = {
      "hrsh7th/cmp-cmdline",
    },
    config = function(_, opts)
      local cmp = require("cmp")

      cmp.setup(opts)
      cmp.setup.cmdline("/", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          {
            name = "cmdline",
            option = {
              ignore_cmds = { "Man", "!" },
            },
          },
        }),
      })
    end,
  },
}
