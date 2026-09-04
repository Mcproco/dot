return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
        {
		    "nvim-tree/nvim-web-devicons",
            opts = {
                color_icons = false,
            },
        },
		"MunifTanjim/nui.nvim",
	},

	branch = "v3.x",
	lazy = false,
    opts = {
        popup_border_style = "double",
        default_component_configs = {
        git_status = {
          symbols = {
            added     = "[*]",
            deleted   = "[-]",
            modified  = "",
            renamed   = "",
            untracked = "[_]",
            ignored   = "",
            unstaged  = "",
            staged    = "",
            conflict  = "[!]",
          },
          align = "right",
        },
      },
    },
}
