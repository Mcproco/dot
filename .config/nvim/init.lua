require("config.options")
require("config.lazy")
require("config.keybinds")

local theme = require("curse.init")
theme.setup {
  theme = 'dark',
  transparent = false,
  italics = {
    comments = false,
    keywords = true,
    functions = true,
    strings = false,
    variables = true,
  },
}
theme.colorscheme()
