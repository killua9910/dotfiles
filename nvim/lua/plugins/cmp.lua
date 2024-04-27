return {
  "hrsh7th/nvim-cmp",
  keys = { ":", "/", "?" },
  dependencies = {
    "hrsh7th/cmp-emoji",
    "hrsh7th/cmp-cmdline",
  },
  config = function(_, opts)
    table.insert(opts.sources, { name = "emoji" })

    local cmp = require("cmp")

    opts.mapping["<CR>"] = cmp.mapping.confirm({ select = true })
    -- run cmp setup
    cmp.setup(opts)

    -- configure `cmp-cmdline` as described in their repo: https://github.com/hrsh7th/cmp-cmdline#setup
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
}
