return {
	'nvim-treesitter/nvim-treesitter',
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.config")
		configs.setup({
			ensure_installed = {"lua", "c", "glsl"},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
