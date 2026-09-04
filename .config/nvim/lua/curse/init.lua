local curse = require("curse.curse")
local config = require("curse.config")
local theme = {}

local function load_colors()

    local function normalize(opts)

        if opts["link"] then
            return opts
        end

        return { fg = opts[1], bg = opts[2] }
    end

    for highlight, opts in pairs(curse) do
        vim.api.nvim_set_hl(0, highlight, normalize(opts))
    end

    require("curse.plugins.lualine")()

end

function theme.setup(values)
      setmetatable(
        config,
        { __index = vim.tbl_extend('force', config.defaults, values) }
      )
end

function theme.colorscheme()

    vim.api.nvim_command 'hi clear'

    if vim.fn.exists 'syntax_on' then
        vim.api.nvim_command 'syntax reset'
    end

    vim.g.colors_name = 'curse'
    load_colors()

end

return theme
