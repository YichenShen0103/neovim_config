return {
	"xiyaowong/transparent.nvim",
	commit = "8a2749a2fa74f97fe6557f61b89ac7fd873f3c21",
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
