return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers.lua_ls = vim.tbl_deep_extend("force", opts.servers.lua_ls, {
        settings = {
          Lua = {
            telemetry = { enable = false },
            runtime = {
              version = "LuaJIT",
              special = {
                reload = "require",
              },
            },
            workspace = {
              checkThirdParty = false,
            },
            codeLens = {
              enable = true,
            },
            completion = {
              callSnippet = "Replace",
            },
            diagnostics = {
              globals = { "vim", "reload" },
            },
            hint = { enable = true, arrayIndex = "Disable" },
          },
        },
      })
    end,
  },
}
