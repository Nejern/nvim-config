require("lspconfig").sumneko_lua.setup {}
require("lspconfig").clangd.setup {}
require("mason-lspconfig").setup({
        ensure_installed = { "clangd", "sumneko_lua" }
    })
