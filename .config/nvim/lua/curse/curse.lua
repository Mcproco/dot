local colors = require("curse.palette")

local scheme = {
    Cursor = { colors.background, colors.foreground },
    Normal = { colors.foreground, colors.background },
    NormalFloat = { colors.foreground, colors.background },
    FloatBorder = { colors.foreground, colors.background },
    Pmenu = { link = "NormalFloat" },
    PmenuSel = { colors.background, colors.foreground },
    Directory = { colors.white_0 },
    Special = { colors.white_0 },
    Search = { colors.background, colors.white_1 },
    CurSearch = { colors.background, colors.purple_0 },
    CursorLine = { nil, colors.white_3 },

    ["@variable"] = { colors.white_0 },
    ["@constant"] = { colors.white_0},
    ["@constant.macro"] = { colors.red_0 },
    ["@string"] = { colors.purple_0 },
    ["@string.documentation"] = { colors.purple_0 },
    ["@character"] = { colors.purple_1 },
    ["@boolean"] = { colors.purple_0 },
    ["@number"] = { colors.purple_0 },
    ["@type"] = { colors.white_2 },
    ["@function"] = { colors.white_0 },
    ["@operator"] = { colors.white_0 },
    ["@keyword"] = { colors.white_2 },
    ["@keyword.nvim"] = { colors.purple_0 },
    ["@comment"] = { colors.white_1 },
    ["@punctuation"] = { colors.white_0 },

    Constant = { link = "@constant" },
    String = { link = "@string" },
    Character = { link = "@character" },
    Number = { link = "@number" },
    Boolean = { link = "@boolean" },
    Float = { link = "@number" },
    Identifier = { link = "@variable" },
    Function = { link = "@function" },
    Statement = { link = "@keyword" },
    Conditional = { link = "@keyword" },
    Operator = { link = "@operator" },
    Keyword = { link = "@keyword" },
    Exception = { link = "@" },
    Type = { link = "@type" },
    Comment = { link = "@comment" },

    --Git
    Changed = { colors.blue_1 },
    Added = { colors.purple_0 },
    NeoTreeGitUntracked = { colors.purple_1 },
    NeoTreeGitUnstaged = { colors.blue_1 },
    NeoTreeStatusLine = { colors.foreground, colors.background },
    NeoTreeStatusLineNC = { colors.foreground, colors.background },

    ["@lsp.type.const.rust"] = { link = "@constant" },

}

return scheme
