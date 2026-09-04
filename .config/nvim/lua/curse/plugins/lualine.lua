local colors = require("curse.palette")

local function load()
    require("lualine").setup({
        options = {
            icons_enabled = false,
            always_show_tabline = false,
            always_divide_middle = false,
            theme = {
                normal = {
                    a = {bg = colors.foreground, fg = colors.background, gui = 'bold'},
                    b = {bg = colors.background, fg = colors.foreground},
                    c = {bg = colors.background, fg = colors.foreground},
                }
            },
            selection_separators = {
                left = '|',
                right = '|',
            },
            component_separators = {
                left = '|',
                right = '|',
            },
        },
        sections = {
            lualine_a = {'mode'},
            lualine_b = {'filename'},
            lualine_c = {},
            lualine_x = {},
            lualine_y = {},
            lualine_z = {'location'}
          },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {},
            lualine_x = {},
            lualine_y = {},
            lualine_z = {}
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {},
    })
end

return load
