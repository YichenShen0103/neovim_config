return {
	"smoka7/hop.nvim",
	version = "*",
	config = function()
        require('hop').setup { keys = 'etovxqpdygfblzhckisuran' }
		-- place this in one of your configuration file(s)
		local hop = require("hop")
		local directions = require("hop.hint").HintDirection
		vim.keymap.set("", "<leader><leader>w", function()
			hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = false, hint_offset = -1 })
		end, { remap = true })
		vim.keymap.set("", "<leader><leader>b", function()
			hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = false, hint_offset = 1 })
		end, { remap = true })
	end,
}
