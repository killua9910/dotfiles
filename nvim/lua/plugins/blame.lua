return {
  {
    "FabijanZulj/blame.nvim",
    keys = {
      { "<leader>gb", "<cmd>BlameToggle<cr>", desc = "Toggle Git Blame" },
    },
    config = function()
      require("blame").setup()
    end,
  },
}
