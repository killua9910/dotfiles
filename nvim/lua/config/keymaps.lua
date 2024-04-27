-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local util = require("lazyvim.util")
local set = vim.keymap.set

-- vertical split
set("n", "|", "<cmd>vsplit<cr>", { desc = "vertical split" })
set("n", "-", "<cmd>split<cr>", { desc = "horizontal  split" })

-- border float term
set("n", "<C-/>", function()
  util.terminal(nil, { border = "single" })
end, { desc = "Float Border Term" })

set("n", "<C-_>", function()
  util.terminal(nil, { border = "single" })
end, { desc = "Float Border Term" })

set("t", "<C-/>", function()
  util.terminal(nil, { border = "single" })
end, { desc = "Float Border Term" })

set("t", "<C-_>", function()
  util.terminal(nil, { border = "single" })
end, { desc = "Float Border Term" })
