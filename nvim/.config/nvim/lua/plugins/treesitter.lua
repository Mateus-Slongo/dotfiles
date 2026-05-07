return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = { "lua", "rust", "python", "go", "json", "markdown", "c", "cpp", "query" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}

