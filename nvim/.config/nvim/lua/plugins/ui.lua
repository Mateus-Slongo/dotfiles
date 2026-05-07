return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = { options = { theme = 'auto', component_separators = '|', section_separators = '' } },
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
  }
}

