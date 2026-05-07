vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt

opt.number = true           -- Show line numbers
opt.relativenumber = true   -- Relative line numbers (better for navigation)
opt.shiftwidth = 4          -- Size of an indent
opt.tabstop = 4             -- Number of spaces tabs count for
opt.expandtab = true        -- Use spaces instead of tabs
opt.smartindent = true      -- Insert indents automatically
opt.clipboard = "unnamedplus" -- Sync with system clipboard
opt.termguicolors = true    -- True color support
opt.ignorecase = true       -- Ignore case in search patterns
opt.smartcase = true        -- ...unless \C or capital in search
opt.updatetime = 250        -- Faster completion/hover
opt.cursorline = true       -- Highlight the current line

