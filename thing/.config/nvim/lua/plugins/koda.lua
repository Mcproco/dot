return {
	--"oskarnurm/koda.nvim",
    --"aikhe/fleur.nvim",
    "cranberry-clockworks/coal.nvim",
	lazy = false,
	priority = 1000,
	config = function ()
		vim.cmd("colorscheme coal")
	end
}
