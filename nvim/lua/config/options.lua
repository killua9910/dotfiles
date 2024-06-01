-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

vim.opt.pumblend = 0
vim.opt.updatetime = 200
vim.opt.wrap = true
vim.g.lazyvim_python_lsp = "pyright"
vim.g.lazyvim_python_ruff = "ruff_lsp"

vim.g.rustaceanvim = {
  tools = {
    float_win_config = {
      border = "rounded",
    },
  },
}
