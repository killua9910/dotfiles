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
    opts = function(_, opts)
      local cmp = require("cmp")
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
          format = function(_, item)
            local icon = LazyVim.config.icons.kinds[item.kind]
            if LazyVim.has("mini.icons") then
              local mini_icon, _, _ = require("mini.icons").get("lsp", item.kind)
              if mini_icon then
                icon = mini_icon .. " "
              end
            end

            if icon then
              item.kind = icon .. item.kind
            end

            local widths = {
              abbr = vim.g.cmp_widths and vim.g.cmp_widths.abbr or 40,
              menu = vim.g.cmp_widths and vim.g.cmp_widths.menu or 30,
            }

            for key, width in pairs(widths) do
              if item[key] and vim.fn.strdisplaywidth(item[key]) > width then
                item[key] = vim.fn.strcharpart(item[key], 0, width - 1) .. "…"
              end
            end

            return item
          end,
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
