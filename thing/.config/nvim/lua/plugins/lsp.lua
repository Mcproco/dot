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
					"fortls",
					"bashls",
					"omnisharp",
					"cmake",
					"lua_ls",
					"gopls",
					"templ",
					"html",
					"cssls",
					"emmet_ls",
					"tailwindcss",
					"ts_ls",
					"astro",
					"ols",
					"pyright",
					"clangd",
					"prismals",
					"yamlls",
					"jsonls",
					"eslint",
					"marksman",
					"sqlls",
					"wgsl_analyzer",
					"texlab",
					"intelephense",
					"nim_langserver",
				},
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
		end
	}
}
