return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.window = vim.tbl_deep_extend("keep", opts.window, {
      width = 30,
    })
    opts.filesystem = vim.tbl_deep_extend("keep", opts.filesystem, {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          "node_modules",
          ".husky",
          ".vscode",
        },
        never_show = {
          ".DS_Store",
          "thumb.db",
          ".git",
        },
      },
    })
  end,
}
