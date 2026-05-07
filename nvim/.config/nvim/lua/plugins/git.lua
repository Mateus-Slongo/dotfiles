return {
  "lewis6991/gitsigns.nvim",
  opts = {
    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns
      vim.keymap.set('n', '<leader>gp', gs.preview_hunk, { buffer = bufnr, desc = "Preview Hunk" })
      vim.keymap.set('n', '<leader>gb', gs.blame_line, { buffer = bufnr, desc = "Blame Line" })
    end,
  },
}

