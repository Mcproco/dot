return {
	{
	--	"kdheepak/cmp-latex-symbols",
	},
	{
	  'saghen/blink.cmp',
	  dependencies = { 'rafamadriz/friendly-snippets' },
	  version = '1.*',
	  ---@module 'blink.cmp'
	  ---@type blink.cmp.Config
	  opts = {
	    fuzzy = { implementation = "lua"},
	    keymap = {
		    ['<CR>'] = { "select_and_accept", "fallback" },
		    ['<Tab>'] = { "select_next", "snippet_forward", "fallback" },
		    ['<S-Tab>'] = { "select_prev", "snippet_backward", "fallback" },
	    },
	    signature = {
		    enabled = true,
		    window = {
			    border = 'single',
			    show_documentation = false,
		    },
	    },
	    completion = {
		    documentation = {
			    auto_show = false,
			    window = {
				    border = 'single'
			    },
		    },
		    menu = {
			    border = "single",
			    auto_show = true,
			    scrollbar = false,
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
					    Function = "λ", -- Lambda symbol for functions
					    Method = "∂", -- Lambda symbol for methods
					    Field = "󰀫", -- Lambda symbol for methods
					    Variable = "󰀫", -- Lambda symbol for methods
					    Property = "󰀫", -- Lambda symbol for methods
					    Keyword = "k", -- Lambda symbol for methods
					    Struct = "Π", -- Lambda symbol for methods
					    Enum = "τ", -- Lambda symbol for methods
					    EnumMember = "τ", -- Lambda symbol for methods
					    Snippet = "⊂",
					    Text = "τ",
					    Module = "⌠",
					    Constructor = "∑",
					  }

					  local icon = kind_icons[ctx.kind]
					  if icon == nil then
					    icon = ctx.kind_icon
					  end
					  return icon
					end,
				      },
				},
			},
		    }
	    },
	    appearance = {
	      nerd_font_variant = 'mono'
	    },
	    snippets = {
		    preset = "luasnip",

		    expand = function(filter)
		    	vim.snippet.expand(filter)
		    end,

		    active = function(filter)
		    	return vim.snippet.active(filter)
		    end,

		    jump = function(direction)
		    	vim.snippet.jump(direction)
		    end
	    },
	    sources = {
	      default = { 'lsp', 'path', 'snippets', 'buffer' },
	    },
	  },
	  opts_extend = { "sources.default" }
	}
}
