require("lspconfig").sumneko_lua.setup {}
require("lspconfig").clangd.setup {}
require("lspconfig").pylsp.setup {}
require("lspconfig").ltex.setup {}
require("mason-lspconfig").setup({
		ensure_installed = {
      "sumneko_lua",
      "clangd",
      "pylsp",
      "ltex",
    },
	})
