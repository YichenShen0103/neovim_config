return {
	"xiyaowong/transparent.nvim",
	config = function()
		require("transparent").setup({
			extra_groups = {
				"NeoTreeVertSplit",
				"NeoTreeWinSeparator",
				"NormalFloat",
				"NvimTreeNormal",
				"NeoTreeNormal",
				"NeoTreeFloatBorder",
				"NeoTreeNormalNC",
				"NormalFloat",
				"NvimTreeNormalFloat",
				"NvimTreeEndOfBuffer",
				"StatusLine",
				"StatusLineNC",
				"NeoTreeStatusLine",
				"NeoTreeStatusLineNC",
                "TabLine",
                "TabLineFill",
                "TabLineSel",
			},
		})
	end,
}
