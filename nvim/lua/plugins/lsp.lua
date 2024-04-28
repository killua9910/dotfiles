return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      inlay_hints = {
        enabled = false,
      },
      codelens = {
        enabled = false,
      },
      servers = {
        lua_ls = {},
        html = {},
        cssls = {},
        tsserver = {},
      },
      setup = {},
    },
  },
}
