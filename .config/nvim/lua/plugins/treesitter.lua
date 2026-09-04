return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.config")
        configs.setup({
            ensure_installed = { "lua", "c", "glsl", "cpp", "python", "rust" },
            highlight = { enable = true, additional_vim_regex_highlighting = false },
            indent = { enable = true },
        })
    end,
}
