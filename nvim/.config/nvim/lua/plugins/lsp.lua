return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "saghen/blink.cmp",
    },
    config = function()
        require("mason").setup()

        local servers = { "rust_analyzer", "basedpyright", "ruff", "gopls", "lua_ls" }

        require("mason-lspconfig").setup({
            ensure_installed = servers,
        })

        local blink_capabilities = require('blink.cmp').get_lsp_capabilities()

        vim.lsp.config("lua_ls", {
            settings = {
                Lua = {
                    diagnostics = { globals = { "vim" } }
                }
            }
        })

        for _, server in ipairs(servers) do
            -- Inject blink's capabilities into the native configuration for each server
            vim.lsp.config(server, {
                capabilities = blink_capabilities,
            })

            vim.lsp.enable(server)
        end

        -- Global LSP mappings
        vim.api.nvim_create_autocmd('LspAttach', {
            callback = function(args)
                local opts = { buffer = args.buf }
                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
            end,
        })
    end,
}
