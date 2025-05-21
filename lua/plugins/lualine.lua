return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local auto = require("lualine.themes.auto")
		auto.normal.c.bg = "#ffff"
		auto.inactive.c.bg = "#ffff"
		require("lualine").setup({
			options = {
				theme = auto,
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = {
					{
						function()
							return vim.g.remote_neovim_host and ("Remote: %s"):format(vim.uv.os_gethostname()) or ""
						end,
						padding = { right = 1, left = 1 },
						separator = { left = "", right = "" },
					},
					"branch",
					"diff",
					"diagnostics",
				},
				lualine_c = { "filename" },
				lualine_x = { "encoding", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
		})
	end,
}
