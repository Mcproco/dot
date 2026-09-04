return {

    'saghen/blink.cmp',
    build = "cargo build --release",
    version = "*",

    dependencies = {
        'saghen/blink.lib',
        'rafamadriz/friendly-snippets',
    },

    --config = function() require("blink.cmp").build():pwait() end,

    opts = {

        keymap = {
            preset = "default",
	        ['<CR>'] = { "select_and_accept", "fallback" },
	        ['<TAB>'] = { "select_next", "snippet_forward", "fallback" },
	        ['<S-TAB>'] = { "select_prev", "snippet_backward", "fallback" },
        },

        signature = {
	        enabled = true,
            trigger = {
                enabled = true,
                show_on_insert = true,
            },
            window = {
                border = "single",
                show_documentation = true,
            },
        },

        completion = {
	        documentation = {
		        auto_show = true,
		        auto_show_delay_ms = 0,
		        window = {
			        border = "single",
		        },
	        },
	        menu = {
		        enabled = true,
		        auto_show = true,
		        scrollbar = false,
		        border = "single",
		        draw = {
			        columns = {
				        { "kind_icon" },
				        { "label",             "label_description", gap = 1 },
				        { "kind",              gap = 1 },
				        { "label_description", gap = 1 },
				        { "source_name",       gap = 1 },
			        },
			        components = {
				        kind_icon = {
					        ellipsis = false,
					        width = { fill = true },
					        text = function(ctx)
						        local kind_icons = {
							        Text = 'T',
							        Method = 'λ',
							        Function = 'λ',
							        Field = '󰀫',
							        Variable = '󰀫',
							        Property = '󰀫',
							        Enum = 'π',
							        EnumMember = 'π',
							        Keyword = "k",
							        Constructor = "∑",
							        Snippet = "X",
						        }
						        local icon = kind_icons[ctx.kind]
						        if icon == nil then 
							        icon = ctx.kind_icon
						        end
						        return icon
					        end,
				        }
			        },
		        }
	        },
        },

        appearance = {
	        nerd_font_variant = "mono",
        },

        sources = { default = { 'lsp', 'path', 'snippets', 'buffer' } },

    },
}
