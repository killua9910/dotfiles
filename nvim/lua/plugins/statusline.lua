return {
  {
    "sontungexpt/sttusline",
    branch = "table_version",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    event = { "BufEnter" },
    opts = {
      statusline_color = "StatusLine",
      disabled = {
        filetypes = {
          "NeoTree",
        },
        buftypes = {
          "terminal",
        },
      },
      components = {
        {
          "mode",
          {
            separator = {
              left = " ",
            },
          },
        },
        "os-uname",
        "filename",
        "filesize",
        "git-branch",
        "git-diff",
        "%=",
        "diagnostics",
        "lsps-formatters",
        "indent",
        "encoding",
        "pos-cursor",
        "pos-cursor-progress",
      },
    },
    config = function(_, opts)
      require("sttusline").setup(opts)
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    enabled = false,
  },
}
