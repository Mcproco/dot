return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"bashls",
					"lua_ls",
					"yamlls",
					"jsonls",
				},
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
		end
	},
    {
        "mrcjkb/rustaceanvim",
        lazy = false,
        version = "^9",
    },
}
