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

-- Close buffer
set("n", "<leader>bd", "<Cmd>BufferClose<CR>", {
  desc = "BufferClose",
  silent = true,
})
set("n", "<C-p>", "<Cmd>BufferPick<CR>", {
  desc = "BufferPick",
  silent = true,
})
-- Sort automatically by...
set("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", {
  desc = "BufferOrderByBufferNumber",
})
set("n", "<leader>bn", "<Cmd>BufferOrderByName<CR>", {
  desc = "BufferOrderByName",
})
set("n", "<leader>bl", "<Cmd>BufferOrderByLanguage<CR>", {
  desc = "BufferOrderByLanguage",
})
set("n", "<leader>bw", "<Cmd>BufferOrderByWindowNumber<CR>", {
  desc = "BufferOrderByWindowNumber",
})
