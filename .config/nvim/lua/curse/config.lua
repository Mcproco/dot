local config = {
	defaults = {
		theme = "curse",
		transparent = false,
		italics = {
			comments = true,
			keywords = true,
			functions = true,
			strings = true,
			variables = true,
		},
		overrides = {},
	},
}

setmetatable(config, { __index = config.defaults })

return config
