return {
  {
    "stevearc/overseer.nvim",
    keys = {
      { "<leader>or", "<cmd>OverseerRun<cr>", desc = "run a task" },
      { "<leader>oc", "<cmd>OverseerRunCmd<cr>", desc = "run a cmd" },
      { "<leader>ot", "<cmd>OverseerToggle<cr>", desc = "open task list" },
    },
    config = function()
      require("overseer").setup()
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_c, "overseer")
    end,
  },
}
