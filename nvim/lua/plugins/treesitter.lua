return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = vim.tbl_deep_extend("force", opts.ensure_installed, {

        "bash",
        "html",
        "javascript",
        "tsx",
        "typescript",
        "css",

        "json",
        "json5",
        "jsonc",

        "lua",
        "markdown",
        "markdown_inline",

        "python",
        "ninja",
        "rst",

        "query",
        "regex",
        "vim",
        "yaml",

        "go",
        "gomod",
        "gowork",
        "gosum",

        "rust",
        "toml",
        "ron",

        "dockerfile",
      })
    end,
  },
}
