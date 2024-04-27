return {
  -- change trouble config
  {
    "folke/trouble.nvim",
    -- opts will be merged with the parent spec
    opts = { use_diagnostic_signs = true },
  },
  { import = "lazyvim.plugins.extras.editor.trouble-v3" },
}
