return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.window = vim.tbl_deep_extend("keep", opts.window, {
      width = 40,
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
    opts.default_component_configs = vim.tbl_deep_extend("force", opts.default_component_configs or {}, {
      git_status = {
        symbols = {
          -- Change type
          added = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
          modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
          deleted = "", -- this can only be used in the git_status source
          renamed = "➜", -- this can only be used in the git_status source
          -- Status type
          untracked = "★",
          ignored = "◌",
          unstaged = "✗",
          staged = "✓",
          conflict = "",
        },
      },
    })
  end,
}
