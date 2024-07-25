-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
local set = vim.keymap.set

set({ "n", "t" }, "<C-h>", "<CMD>NavigatorLeft<CR>", { desc = "Navigate Left", silent = true })
set({ "n", "t" }, "<C-l>", "<CMD>NavigatorRight<CR>", { desc = "Navigate Right", silent = true })
set({ "n", "t" }, "<C-k>", "<CMD>NavigatorUp<CR>", { desc = "Navigate Up", silent = true })
set({ "n", "t" }, "<C-j>", "<CMD>NavigatorDown<CR>", { desc = "Navigate Down", silent = true })

set("n", "<leader>kk", "<CMD>w<CR><ESC>", { desc = "Save File", noremap = true, silent = true, nowait = true })
set("n", "<leader>wq", "<CMD>wq<CR>", { desc = "Save File And Quit", silent = true, noremap = true, nowait = true })
set("n", "<leader>dd", LazyVim.ui.bufremove, { desc = "Delete Buffer", silent = true, noremap = true, nowait = true })

set("n", "i", function()
  return string.match(vim.api.nvim_get_current_line(), "%g") == nil and "cc" or "i"
end, { expr = true, noremap = true })
